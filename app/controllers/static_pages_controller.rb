class StaticPagesController < ApplicationController
  http_basic_authenticate_with :name => "bioenergy", :password => "cabernet"
  
  def index
    @team_members = TeamMember.all
  end

  def admin
    @test = "TESTSETETSTSETSETSETSETSETEST"
    @team_members = TeamMember.all
    @faqs = Faq.all
  end

end
