class Character < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_by_name,
    against: [:name],

  using: {
    tsearch: { prefix: true }
  }
  has_many :user
  validates :name, :description, :price, :rating, presence: true
end
