class Trekking < ApplicationRecord
  has_rich_text :content
  
  validates :title, presence: true
  validates :duration, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :difficulty, presence: true, inclusion: { in: %w[easy medium challenging] }
  validates :overview_title, presence: true
  validates :overview_description, presence: true

  def content_must_have_text
    if content.blank? || content.body.to_plain_text.strip.blank?
      errors.add(:content, "can't be blank")
    end
  end
end