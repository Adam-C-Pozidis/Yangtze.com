class CartItemsController < ApplicationController
  def new
    @cart_item = CartItem.new
  end

  def create
    @cart_item = CartItem.create(cart_item_params)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def cart_item_params
    params.require(:cart_item).permit(:book_id, :shopping_cart_id, :quantity)
  end
end
