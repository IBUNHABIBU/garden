class Admin::DashboardController < ApplicationController
   before_action :authenticate_user!
  def index
    @projects = Project.order(position: :asc)
  end
end
