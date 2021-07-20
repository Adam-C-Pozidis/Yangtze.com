class Book < ApplicationRecord
  belongs_to :author
  has_one_attached :photo
  has_many :cart_items
  has_many :shopping_carts, through: :cart_items

  validates :title, :year, :pages, :description, :author, :photo, :value, presence: true
end
