class Rental < ApplicationRecord
  include PgSearch::Model
  pg_search_scope :search_rental_by_character_name,
  against: [:character_id],
  associated_against: { character: [:name] }
  belongs_to :character
  belongs_to :user
  validates :start_date, :end_date, presence: true
  validate :end_date_after_start_date


  private

  def end_date_after_start_date
   return if start_date.blank? || end_date.blank?
   errors.add(:end_date, "doit être après la date de début") if end_date <= start_date
  end
end
