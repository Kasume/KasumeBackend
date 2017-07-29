class CreateLendings < ActiveRecord::Migration[5.1]
  def change
    create_table :lendings do |t|
      t.references :product, foreign_key: true
      t.string :recipient_email
      t.datetime :lend_at
      t.datetime :return_at
      t.boolean :borrowed

      t.timestamps
    end
  end
end
