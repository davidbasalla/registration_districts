class WardRegdLaMappingsController < ApplicationController

  def index
    @mappings = WardRegdLaMapping.all
  end

  def index_reg_la
    @mappings = WardRegdLaMapping.select(:registration_district_name, :local_authority_name).distinct.order(:registration_district_name)
  end

  def index_reg
    @mappings = WardRegdLaMapping.select("registration_district_name, COUNT(DISTINCT(local_authority_name)) as la_count").group("registration_district_name")
    # @mappings = WardRegdLaMapping.select(:registration_district_name).distinct.order(:registration_district_name)
  end
end
