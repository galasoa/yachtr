class Yacht < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many_attached :photos

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  def average_stars
    if reviews.any?
      average = reviews.map(&:rating).sum/reviews.count
    else
    average = 0
  end
    return average
  end
end

