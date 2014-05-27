class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  protected 
  def is_admin?
    if current_user && current_user.email == ENV["P_EMAIL"] || current_user && current_user.email == ENV["C_EMAIL"] || current_user && current_user.email == ENV["S_EMAIL"]
    else
      flash[:alert] = "Sorry. You do not have the correct administrative access to view the page you are trying to access."
      redirect_to root_path
    end
  end
end
