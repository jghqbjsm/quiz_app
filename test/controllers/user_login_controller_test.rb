require 'test_helper'

class UserLoginControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
