class LdgEntriesController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @entries = LdgEntry.all.order(sort_column + " " + sort_direction)
  end

  private

  def sort_column
    LdgEntry.column_names.include?(params[:sort]) ? params[:sort] : "title"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
