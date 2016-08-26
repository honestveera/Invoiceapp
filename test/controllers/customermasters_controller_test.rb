require 'test_helper'

class CustomermastersControllerTest < ActionController::TestCase
  setup do
    @customermaster = customermasters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:customermasters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create customermaster" do
    assert_difference('Customermaster.count') do
      post :create, customermaster: { customeraddress: @customermaster.customeraddress, customercst: @customermaster.customercst, customeremail: @customermaster.customeremail, customerfax: @customermaster.customerfax, customername: @customermaster.customername, customerphone: @customermaster.customerphone, customertin: @customermaster.customertin }
    end

    assert_redirected_to customermaster_path(assigns(:customermaster))
  end

  test "should show customermaster" do
    get :show, id: @customermaster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @customermaster
    assert_response :success
  end

  test "should update customermaster" do
    patch :update, id: @customermaster, customermaster: { customeraddress: @customermaster.customeraddress, customercst: @customermaster.customercst, customeremail: @customermaster.customeremail, customerfax: @customermaster.customerfax, customername: @customermaster.customername, customerphone: @customermaster.customerphone, customertin: @customermaster.customertin }
    assert_redirected_to customermaster_path(assigns(:customermaster))
  end

  test "should destroy customermaster" do
    assert_difference('Customermaster.count', -1) do
      delete :destroy, id: @customermaster
    end

    assert_redirected_to customermasters_path
  end
end
