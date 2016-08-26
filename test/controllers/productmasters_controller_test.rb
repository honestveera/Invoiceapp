require 'test_helper'

class ProductmastersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
