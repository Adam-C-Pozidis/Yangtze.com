class Author < ApplicationRecord
    has_many :books
    has_one_attached :photo

    validates :first_name, :last_name, :age, :nationality, :photo, presence: true
    validates :first_name, uniqueness: {scope: :last_name,
    message: "this author already exist"}
    def full_name
        return "#{self.first_name} #{self.last_name}" 
    end
end
