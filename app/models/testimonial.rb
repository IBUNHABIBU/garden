class Testimonial < ApplicationRecord
      has_one_attached :avatar

  validates :author_name, presence: true
  validates :content, presence: true, length: { minimum: 20 }
  validates :rating, presence: true, 
                     numericality: { only_integer: true, 
                                     greater_than_or_equal_to: 1, 
                                     less_than_or_equal_to: 5 }

  def star_rating
    '★' * rating + '☆' * (5 - rating)
  end
end
