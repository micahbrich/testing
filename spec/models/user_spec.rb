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

  # it "fails on purpose" do
    # expect(true).to be true
  # end

  it "has a first name" do
    user = FactoryGirl.build(:user)
    expect(user.first_name).to eq 'Dave'

    user = FactoryGirl.build(:user, name:'Benjamin')
    expect(user.first_name).to eq 'Benjamin'
  end
 
  it "has a last name" do
    user = FactoryGirl.build(:user)
    expect(user.last_name).to eq 'Franco'

    user = FactoryGirl.build(:user, name:'B. Franklin')
    expect(user.last_name).to eq 'Franklin'

    user = FactoryGirl.build(:user, name:'Franklin')
    expect(user.last_name).to be_nil

    user = FactoryGirl.build(:user, name:'Philip A. Harmonic')
    expect(user.last_name).to eq 'Harmonic'
  end


  it "has an email address" do
    user = FactoryGirl.build(:user)
    expect(user.email).not_to be_nil

    user = FactoryGirl.build(:user, email: nil)
    expect(user).to be_invalid

    user = FactoryGirl.build(:user, email: "")
    expect(user.email).not_to be_nil
  end
end