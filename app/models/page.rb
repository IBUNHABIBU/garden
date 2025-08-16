class Page < ApplicationRecord
  has_one_attached :hero_image
  has_one_attached :about_image
end
