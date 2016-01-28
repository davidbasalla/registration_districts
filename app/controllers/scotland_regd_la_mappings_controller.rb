class ScotlandRegdLaMappingsController < ApplicationController
  def index
    @mappings = ScottishRegistrationDistrict.all.order(:council)
  end
end
