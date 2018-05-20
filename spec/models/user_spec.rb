require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.create!(name: 'Test User', email: 'test.user@email.com', password: 'testuser')
  end

  describe "creation" do
    it "should have one item created after being created" do
      expect(User.all.count).to eq(1)
    end
  end

  describe "validations" do
    it "should not let a user be created without an email address" do
      @user.email = nil
      expect(@user).to_not be_valid
    end

    it "should not let a user be created without a password" do
      @user.password = nil
      expect(@user).to_not be_valid
    end
  end
end
