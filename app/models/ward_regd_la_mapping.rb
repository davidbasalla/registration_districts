class WardRegdLaMapping < ActiveRecord::Base

  def self.registration_districts
    WardRegdLaMapping.select("registration_district_name").distinct
  end

  def ldg_matches
    LdgEntry.where("title LIKE :query", query: "%#{registration_district_name}%")
  end
end
