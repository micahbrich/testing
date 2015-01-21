require 'rails_helper'

RSpec.describe User, :type => :model do

  it "has a name" do
    user = FactoryGirl.build(:user)
    expect(user.name).not_to be_nil

    user = FactoryGirl.build(:user, name: nil)
    expect(user).to be_invalid

    user = FactoryGirl.build(:user, name: "")
    expect(user).to be_invalid
  end
  
  it "has a first name"
  it "has a last name"
  it "has an email address"
end