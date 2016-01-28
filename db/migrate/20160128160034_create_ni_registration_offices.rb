class CreateNiRegistrationOffices < ActiveRecord::Migration
  def change
    create_table :ni_registration_offices do |t|
      t.string :name
      t.string :council

      t.timestamps null: false
    end
  end
end
