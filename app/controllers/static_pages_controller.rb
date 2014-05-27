class StaticPagesController < ApplicationController
  http_basic_authenticate_with :name => "bioenergy", :password => "cabernet"
  
  def index
    @team_members = TeamMember.all
    @hs = HomeStatement.all
  end

  def admin
    @team_members = TeamMember.all
    @faqs = Faq.all
    @hs = HomeStatement.all
  end

end
