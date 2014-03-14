require 'spec_helper'

describe TeamMember do

  it "can be created from a factory" do 
    team_member = FactoryGirl.create :team_member
    expect(team_member.id).not_to be_nil
  end

  context "add model validations" do
    it {should validate_presence_of :title}
    it {should validate_presence_of :first_name}
    it {should validate_presence_of :last_name}
    it {should validate_presence_of :bio}
  end

end