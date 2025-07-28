class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         :confirmable  # Add if email confirmation is needed

  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP }

  def admin?
    admin || super_admin? # Add super_admin if needed
  end
end
