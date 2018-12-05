class AddShopCategoryToEvents < ActiveRecord::Migration[5.2]
  def change
    add_column :events, :shop_category, :string
  end
end
