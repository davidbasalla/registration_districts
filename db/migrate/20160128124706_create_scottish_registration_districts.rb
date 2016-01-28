class CreateScottishRegistrationDistricts < ActiveRecord::Migration
  def change
    create_table :scottish_registration_districts do |t|
      t.string :name
      t.integer :reg_id
      t.string :type
      t.string :council

      t.timestamps null: false
    end
  end
end
