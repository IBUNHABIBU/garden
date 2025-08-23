class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :first_name, :last_name, presence: true
  validates :role, presence: true, inclusion: { in: %w[super_admin admin user] }
  
  # Set default role
  before_validation :set_default_role, on: :create
  
  def super_admin?
    role == 'super_admin'
  end
  
  def admin?
    role == 'admin' || super_admin?
  end
  
  def user?
    role == 'user'
  end
  
  def display_name
    "#{first_name} #{last_name}"
  end
  
  def can_be_deleted_by?(current_user)
    return false if current_user == self
    return true if current_user.super_admin?
    return false if super_admin? # Only super_admin can delete other super_admins
    current_user.admin? && user?
  end
  
  def can_be_modified_by?(current_user)
    return false if current_user == self && super_admin?
    return true if current_user.super_admin?
    current_user.admin? && (user? || (admin? && current_user == self))
  end

  private
  
  def set_default_role
    self.role ||= 'user'
  end
end