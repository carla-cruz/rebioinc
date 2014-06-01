class StaticPagesController < ApplicationController

  before_filter :is_admin?, except: [:index, :philosophy]
  
  def index
    @team_members = TeamMember.all
    @hs = HomeStatement.all
  end

  def admin
    @team_members = TeamMember.all
    @faqs = Faq.all
    @hs = HomeStatement.all
  end

  def philosophy
  end
end
