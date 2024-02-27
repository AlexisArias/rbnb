class Character < ApplicationRecord
  has_many :user
  validates :name, :description, :price, :rating, presence: true
end
