class CartItem < ApplicationRecord
  belongs_to :Shopping_cart
  belongs_to :Book
end
