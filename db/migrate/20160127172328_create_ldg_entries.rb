class CreateLdgEntries < ActiveRecord::Migration
  def change
    create_table :ldg_entries do |t|
      t.string :title
      t.string :address_line_1
      t.string :address_line_2
      t.string :address_line_3
      t.string :town_city
      t.string :postcode
      t.string :url

      t.timestamps null: false
    end
  end
end
