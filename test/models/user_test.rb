require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'valid user' do
    user = User.new(first_name: "Alex", email: "alex@hello.com")
    assert user.valid?
  end

  test 'invalid without first name' do
    user = User.new(email: "alex@hello.com")
    refute user.valid?, "user is valid without a first name"
    assert_not_nil user.errors[:first_name], 'no validation error for name present'
  end


  test 'invalid without email' do
    user = User.new(first_name: "Alex")
    refute user.valid?, "user is valid without an email"
    assert_not_nil user.errors[:email]
  end
end
