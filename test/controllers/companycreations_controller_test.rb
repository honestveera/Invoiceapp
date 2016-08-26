require 'test_helper'

class CompanycreationsControllerTest < ActionController::TestCase
  setup do
    @companycreation = companycreations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companycreations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create companycreation" do
    assert_difference('Companycreation.count') do
      post :create, companycreation: { companyname: @companycreation.companyname }
    end

    assert_redirected_to companycreation_path(assigns(:companycreation))
  end

  test "should show companycreation" do
    get :show, id: @companycreation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @companycreation
    assert_response :success
  end

  test "should update companycreation" do
    patch :update, id: @companycreation, companycreation: { companyname: @companycreation.companyname }
    assert_redirected_to companycreation_path(assigns(:companycreation))
  end

  test "should destroy companycreation" do
    assert_difference('Companycreation.count', -1) do
      delete :destroy, id: @companycreation
    end

    assert_redirected_to companycreations_path
  end
end
