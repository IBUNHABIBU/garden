class Testimonial < ApplicationRecord
  has_one_attached :avatar
  validates :author_name, :content, presence: true
end
