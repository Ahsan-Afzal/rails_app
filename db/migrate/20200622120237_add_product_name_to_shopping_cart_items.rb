class AddProductNameToShoppingCartItems < ActiveRecord::Migration[6.0]
  def change
    add_column :shopping_cart_items, :product_name, :string
  end
end
