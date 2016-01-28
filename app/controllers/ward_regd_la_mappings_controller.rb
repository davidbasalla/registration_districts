class WardRegdLaMappingsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @mappings = WardRegdLaMapping.all.order(sort_column + " " + sort_direction)
  end

  def index_reg_la
    @mappings = WardRegdLaMapping
      .select(:registration_district_name, :local_authority_name)
      .distinct
      .order(sort_column + " " + sort_direction)
  end

  def index_reg
    @mappings = WardRegdLaMapping
      .select("registration_district_name, COUNT(DISTINCT(local_authority_name)) as la_count")
      .group("registration_district_name")
      .order(sort_column + " " + sort_direction)
  end

  private

  def sort_column
    WardRegdLaMapping.column_names.include?(params[:sort]) ? params[:sort] : "registration_district_name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
