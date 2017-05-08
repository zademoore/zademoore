class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def current_user
  	@current_user ||= Authorization.find_by(id: session[:user_id])
  end

  def admin_user
  	@admin_user = current_user.uid == "2484905497" || "443149282701979"
  end

  helper_method :current_user

  helper_method :admin_user

end
