class Book < ApplicationRecord
  belongs_to :author
  has_one_attached :photo

  validates :title, :year, :pages, :description, :author, :photo, :value, presence: true
end
