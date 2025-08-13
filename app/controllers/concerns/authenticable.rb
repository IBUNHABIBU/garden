# module Authenticable
#   extend ActiveSupport::Concern

#   included do
#     before_action :authenticate_user!
#     before_action :authorize_admin, if: :admin_controller?

#     rescue_from CanCan::AccessDenied do |exception|
#       redirect_to root_path, alert: exception.message
#     end
#   end

#   def authorize_admin
#     return if current_user.admin?
#     redirect_to root_path, alert: "Admin access required"
#   end

#   def admin_controller?
#     controller_path.start_with?('admin/')
#   end
# end