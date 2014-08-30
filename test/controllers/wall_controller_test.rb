require 'test_helper'

class WallControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get post" do
    get :post
    assert_response :success
  end

  test "should get message" do
    get :message
    assert_response :success
  end

end
