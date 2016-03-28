# the main Class will all controller inheret its functionality
# the application class where I check if the user is admin,
# visitor, if the user is logid in or not
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :authenticate_user!
  protect_from_forgery with: :exception

  def authorize_admin
    redirect_to :back, :status => 401 unless current_user.admin
  end
end
