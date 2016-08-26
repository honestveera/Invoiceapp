require 'test_helper'

class AuthorizedusersControllerTest < ActionController::TestCase
  setup do
    @authorizeduser = authorizedusers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:authorizedusers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create authorizeduser" do
    assert_difference('Authorizeduser.count') do
      post :create, authorizeduser: { companyname: @authorizeduser.companyname, username: @authorizeduser.username, usertype: @authorizeduser.usertype, year: @authorizeduser.year }
    end

    assert_redirected_to authorizeduser_path(assigns(:authorizeduser))
  end

  test "should show authorizeduser" do
    get :show, id: @authorizeduser
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @authorizeduser
    assert_response :success
  end

  test "should update authorizeduser" do
    patch :update, id: @authorizeduser, authorizeduser: { companyname: @authorizeduser.companyname, username: @authorizeduser.username, usertype: @authorizeduser.usertype, year: @authorizeduser.year }
    assert_redirected_to authorizeduser_path(assigns(:authorizeduser))
  end

  test "should destroy authorizeduser" do
    assert_difference('Authorizeduser.count', -1) do
      delete :destroy, id: @authorizeduser
    end

    assert_redirected_to authorizedusers_path
  end
end
