class CreatePropertyCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :property_categories do |t|
      t.string :name
      t.datetime :created_at
      t.datetime :edited_at
      t.datetime :updated_at

      t.timestamps
    end
  end
end
