class Trekking < ApplicationRecord
  has_rich_text :content
  has_one_attached :main_image
  has_many_attached :gallery_images
  
  validates :title, presence: true
  validates :duration, presence: true, numericality: { only_integer: true, greater_than: 0 }
  validates :difficulty, presence: true, inclusion: { in: %w[easy medium challenging] }
  validates :overview_title, presence: true
  validates :overview_description, presence: true
  validates :content, presence: true
  
  # Image validations
  validate :acceptable_main_image
  validate :acceptable_gallery_images
  
  private
  
  def acceptable_main_image
    return unless main_image.attached?
    
    unless main_image.blob.byte_size <= 5.megabyte
      errors.add(:main_image, "is too large (max 5MB)")
    end
    
    acceptable_types = ["image/jpeg", "image/png", "image/webp"]
    unless acceptable_types.include?(main_image.blob.content_type)
      errors.add(:main_image, "must be a JPEG, PNG, or WebP image")
    end
  end
  
  def acceptable_gallery_images
    return unless gallery_images.attached?
    
    gallery_images.each do |image|
      unless image.blob.byte_size <= 5.megabyte
        errors.add(:gallery_images, "one or more images are too large (max 5MB each)")
        break
      end
      
      acceptable_types = ["image/jpeg", "image/png", "image/webp"]
      unless acceptable_types.include?(image.blob.content_type)
        errors.add(:gallery_images, "must be JPEG, PNG, or WebP images")
        break
      end
    end
  end
end