require 'test_helper'

class SamplecreationsControllerTest < ActionController::TestCase
  setup do
    @samplecreation = samplecreations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:samplecreations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create samplecreation" do
    assert_difference('Samplecreation.count') do
      post :create, samplecreation: { sample: @samplecreation.sample }
    end

    assert_redirected_to samplecreation_path(assigns(:samplecreation))
  end

  test "should show samplecreation" do
    get :show, id: @samplecreation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @samplecreation
    assert_response :success
  end

  test "should update samplecreation" do
    patch :update, id: @samplecreation, samplecreation: { sample: @samplecreation.sample }
    assert_redirected_to samplecreation_path(assigns(:samplecreation))
  end

  test "should destroy samplecreation" do
    assert_difference('Samplecreation.count', -1) do
      delete :destroy, id: @samplecreation
    end

    assert_redirected_to samplecreations_path
  end
end
