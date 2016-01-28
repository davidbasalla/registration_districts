class ScotlandRegdLaMappingsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @mappings = ScottishRegistrationDistrict.all.order(sort_column + " " + sort_direction)
  end

  def sort_column
    ScottishRegistrationDistrict.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
