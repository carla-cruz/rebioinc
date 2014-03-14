class TeamMember < ActiveRecord::Base
  validates :first_name, :last_name, :title, :bio, presence: true
end