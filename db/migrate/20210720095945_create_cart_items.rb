class CreateCartItems < ActiveRecord::Migration[6.0]
  def change
    create_table :cart_items do |t|
      t.references :shopping_cart, null: false, foreign_key: true
      t.references :book, null: true, foreign_key: true

      t.timestamps
    end
  end
end
