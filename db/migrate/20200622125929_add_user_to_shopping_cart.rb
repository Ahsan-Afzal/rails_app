class AddUserToShoppingCart < ActiveRecord::Migration[6.0]
  def change
    add_reference :shopping_carts, :user, null: true, foreign_key: true
  end
end
