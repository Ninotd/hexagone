class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :address
      t.text :description
      t.string :phone_number
      t.references :user, foreign_key: true
      t.references :city, foreign_key: true

      t.timestamps
    end
  end
end
