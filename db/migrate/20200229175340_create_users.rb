class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :phone
      t.string :email
      t.string :location
      t.references :user_category, foreign_key: true

      t.timestamps
    end
  end
end
