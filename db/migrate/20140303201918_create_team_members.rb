class CreateTeamMembers < ActiveRecord::Migration
  def change
    create_table :team_members do |t|
    	t.string :title
    	t.string :last_name
    	t.string :first_name
    	t.text :bio
    end
  end
end
