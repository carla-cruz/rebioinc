class StaticPagesController < ApplicationController
  http_basic_authenticate_with :name => "bioenergy", :password => "cabernet"
  
  def index
    @team_members = TeamMember.all
  end

  def our_philosophy
  end

  def our_process
  end

  def location
  end

  def faq
  end

end
