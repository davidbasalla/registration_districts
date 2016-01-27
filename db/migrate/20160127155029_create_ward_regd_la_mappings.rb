class CreateWardRegdLaMappings < ActiveRecord::Migration
  def change
    create_table :ward_regd_la_mappings do |t|
      t.string :WD15CD
      t.string :WD15NM
      t.string :REGD15CD
      t.string :REGD14NM
      t.string :PAR15CD
      t.string :PAR15NM
      t.string :LAD15CD
      t.string :LAD15NM

      t.timestamps null: false
    end
  end
end
