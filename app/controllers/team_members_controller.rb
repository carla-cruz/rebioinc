class TeamMembersController < ApplicationController

	def index
    @team_members = TeamMember.all
	end

	def new
    @team_member TeamMember.new
	end

  def create
    @team_member = TeamMember.create!(team_member_params)
  end

  private

  def team_member_params
    params.require(:team_member).permit(:title, :first_name, :last_name, :bio)
  end

end	