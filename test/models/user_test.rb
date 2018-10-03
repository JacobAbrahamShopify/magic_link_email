require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test "create fails when email is not provided" do
  	user = User.new
  	user.validate

  	assert user.errors[:email].present?
  end

  test "create is a success when email is provided" do
  	user = User.create!(email:'email')

  	assert user.valid?
  end
end
