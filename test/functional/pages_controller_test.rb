require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get credit" do
    get :credit
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

end
