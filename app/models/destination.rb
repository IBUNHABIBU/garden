class Destination < ApplicationRecord
  has_one_attached :image

  validates :name, presence: true
  validates :country, presence: true
  validates :description, presence: true, length: { minimum: 50 }

  scope :featured, -> { where(featured: true) }

  # Ensure at least 3 destinations remain featured
  before_update :prevent_removing_featured_if_minimum_not_met

  private

  def prevent_removing_featured_if_minimum_not_met
    if saved_change_to_featured? && !featured && Destination.featured.count <= 3
      errors.add(:featured, "At least 3 destinations must remain featured")
      throw(:abort) # stops the update
    end
  end
end
