# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Importer.new(WardRegdLaMapping, "db/WD15_REGD15_LAD15_EW_LU.csv").import
Importer.new(NiRegistrationOffice, "db/ni_reg_list.csv").import
