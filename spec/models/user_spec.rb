require 'rails_helper'

RSpec.describe User, :type => :model do
  it "has a name" do
    user = FactoryGirl.build(:user)
    expect(user.name).not_to be_nil
  end
  it "has a first name"
  it "has a last name"
  it "has an email address"
end