require "csv"

# tricky issue of how to get the headers... should be the top line of the CSV
# codify it in class? or add the line to each CSV file?

class Importer
  attr_reader :klass

  def initialize(klass, filename)
    @filename = filename
    @klass = klass
  end

  def import
    entries.each do |e|
      klass.new(e).save
    end
  end

  def entries
    @_entries ||= values.map do |v|
      headers.zip(v).to_h
    end
  end

  def headers
    klass.column_names.reject do |e| 
      e == "id" || 
      e == "created_at" || 
      e == "updated_at"
    end
  end

  def values
    all_rows[1..-1]
  end

  def all_rows
    @_arr_of_arrs ||= CSV.read(@filename)
  end
end
