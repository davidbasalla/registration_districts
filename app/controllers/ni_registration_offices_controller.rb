class NiRegistrationOfficesController < ApplicationController
  def index
    @mappings = NiRegistrationOffice.all.order(:council)
  end
end
