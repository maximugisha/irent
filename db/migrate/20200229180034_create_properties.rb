class CreateProperties < ActiveRecord::Migration[5.1]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :description
      t.string :location
      t.numeric :price
      t.string :flag
      t.datetime :created_at
      t.datetime :edited_at
      t.datetime :updated_at
      t.references :property_category, foreign_key: true
      t.references :property_type, foreign_key: true

      t.timestamps
    end
  end
end
