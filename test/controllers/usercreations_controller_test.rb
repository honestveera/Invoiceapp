require 'test_helper'

class UsercreationsControllerTest < ActionController::TestCase
  setup do
    @usercreation = usercreations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usercreations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usercreation" do
    assert_difference('Usercreation.count') do
      post :create, usercreation: { username: @usercreation.username, usertype: @usercreation.usertype }
    end

    assert_redirected_to usercreation_path(assigns(:usercreation))
  end

  test "should show usercreation" do
    get :show, id: @usercreation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usercreation
    assert_response :success
  end

  test "should update usercreation" do
    patch :update, id: @usercreation, usercreation: { username: @usercreation.username, usertype: @usercreation.usertype }
    assert_redirected_to usercreation_path(assigns(:usercreation))
  end

  test "should destroy usercreation" do
    assert_difference('Usercreation.count', -1) do
      delete :destroy, id: @usercreation
    end

    assert_redirected_to usercreations_path
  end
end
