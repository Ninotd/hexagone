class CreateShopPhotos < ActiveRecord::Migration[5.2]
  def change
    create_table :shop_photos do |t|
      t.string :photo
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
