class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :quantity
      t.text :description
      t.string :image_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
