module ApplicationHelper

  protected 
  def is_admin?
    current_user && current_user.email == ENV["P_EMAIL"] || current_user && current_user.email == ENV["C_EMAIL"] || current_user && current_user.email == ENV["S_EMAIL"]
  end
  
end
