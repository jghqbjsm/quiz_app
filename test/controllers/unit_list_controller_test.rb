require 'test_helper'

class UnitListControllerTest < ActionController::TestCase
  test "should get unit_list" do
    get :unit_list
    assert_response :success
  end

end
