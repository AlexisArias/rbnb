class Rental < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_rental_by_character_name,
  against: [:character_id],
  associated_against: { character: [:name] }
  belongs_to :character
  belongs_to :user
  validates :start_date, :end_date, presence: true
end
