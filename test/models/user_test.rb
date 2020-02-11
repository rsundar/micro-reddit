require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def setup
    @user = User.new(name: "example", email: "example@example.com")
  end
  
  test "Should have a name" do
    @user.name = ' '
    assert_not @user.valid? 
  end

  test "Should have a non empty email" do
    @user.email = ' '
    assert_not @user.valid?
  end
end
