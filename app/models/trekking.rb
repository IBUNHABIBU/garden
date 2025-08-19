class Trekking < ApplicationRecord
  has_rich_text :content
  
  validates :title, presence: true
  validates :duration, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :difficulty, presence: true, inclusion: { in: %w[easy medium challenging] }
  validates :overview_title, presence: true
  validates :overview_description, presence: true
  validates :content, presence: true
end