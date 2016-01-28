class CreateWardRegdLaMappings < ActiveRecord::Migration
  def change
    create_table :ward_regd_la_mappings do |t|
      t.string :ward_code
      t.string :ward_name
      t.string :registration_district_code
      t.string :registration_district_name
      t.string :parish_code
      t.string :parish_name
      t.string :local_authority_code
      t.string :local_authority_name

      t.timestamps null: false
    end
  end
end
