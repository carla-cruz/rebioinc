class TeamMembersController < ApplicationController

	def index
    @team_members = TeamMember.all
	end

	def new
    @team_member = TeamMember.new
	end

  def create
    @team_member = TeamMember.create!(team_member_params)
    redirect_to admin_path
  end

  def edit
    @team_member = TeamMember.find(params[:id])
  end

  def update
    @team_member = TeamMember.find(params[:id])
    @team_member.update_attributes(team_member_params)
    redirect_to root_path
  end

  def destroy
    @category = TeamMember.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to admin_path }
      format.js
    end
  end

  private

  def team_member_params
    params.require(:team_member).permit(:title, :first_name, :last_name, :bio)
  end

end	