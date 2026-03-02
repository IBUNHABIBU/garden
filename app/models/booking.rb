class Booking < ApplicationRecord
  validates :full_name, :email, :phone, :trek_name, :start_date, :end_date, :number_of_people, presence: true
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :number_of_people, numericality: { only_integer: true, greater_than: 0 }
  
  validate :end_date_after_start_date

  enum status: {
    pending: 0,
    confirmed: 1,
    cancelled: 2,
    completed: 3
  }
  
  private
  
  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?
    
    if end_date < start_date
      errors.add(:end_date, "must be after start date")
    end
  end
end