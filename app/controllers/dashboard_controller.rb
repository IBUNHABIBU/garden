class DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :require_admin_access

  def index
    # You can add any dashboard statistics here later
  end

  private

  def require_admin_access
    unless current_user.admin? || current_user.super_admin?
      redirect_to root_path, alert: "You are not authorized to access the dashboard."
    end
  end
end