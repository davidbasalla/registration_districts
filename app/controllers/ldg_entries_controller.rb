class LdgEntriesController < ApplicationController
  def index
    @entries = LdgEntry.all.order(:title)
  end
end
