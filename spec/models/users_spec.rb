require 'spec_helper'

describe User do

  it "can be created from a factory" do
    user = FactoryGirl.create :user
    expect(user.id).not_to be_nil
  end

  context "user validations" do
    it { should validate_presence_of :email}
    it { should validate_presence_of :password}
    it { should validate_presence_of :password_confirmation}
    it { should validate_uniqueness_of :email}
  end
end
