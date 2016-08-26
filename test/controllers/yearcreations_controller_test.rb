require 'test_helper'

class YearcreationsControllerTest < ActionController::TestCase
  setup do
    @yearcreation = yearcreations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:yearcreations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create yearcreation" do
    assert_difference('Yearcreation.count') do
      post :create, yearcreation: { year: @yearcreation.year }
    end

    assert_redirected_to yearcreation_path(assigns(:yearcreation))
  end

  test "should show yearcreation" do
    get :show, id: @yearcreation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @yearcreation
    assert_response :success
  end

  test "should update yearcreation" do
    patch :update, id: @yearcreation, yearcreation: { year: @yearcreation.year }
    assert_redirected_to yearcreation_path(assigns(:yearcreation))
  end

  test "should destroy yearcreation" do
    assert_difference('Yearcreation.count', -1) do
      delete :destroy, id: @yearcreation
    end

    assert_redirected_to yearcreations_path
  end
end
