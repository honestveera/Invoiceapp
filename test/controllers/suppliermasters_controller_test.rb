require 'test_helper'

class SuppliermastersControllerTest < ActionController::TestCase
  setup do
    @suppliermaster = suppliermasters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:suppliermasters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create suppliermaster" do
    assert_difference('Suppliermaster.count') do
      post :create, suppliermaster: { supplieraddress: @suppliermaster.supplieraddress, suppliercst: @suppliermaster.suppliercst, supplieremail: @suppliermaster.supplieremail, supplierfax: @suppliermaster.supplierfax, suppliername: @suppliermaster.suppliername, supplierphone: @suppliermaster.supplierphone, suppliertin: @suppliermaster.suppliertin }
    end

    assert_redirected_to suppliermaster_path(assigns(:suppliermaster))
  end

  test "should show suppliermaster" do
    get :show, id: @suppliermaster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @suppliermaster
    assert_response :success
  end

  test "should update suppliermaster" do
    patch :update, id: @suppliermaster, suppliermaster: { supplieraddress: @suppliermaster.supplieraddress, suppliercst: @suppliermaster.suppliercst, supplieremail: @suppliermaster.supplieremail, supplierfax: @suppliermaster.supplierfax, suppliername: @suppliermaster.suppliername, supplierphone: @suppliermaster.supplierphone, suppliertin: @suppliermaster.suppliertin }
    assert_redirected_to suppliermaster_path(assigns(:suppliermaster))
  end

  test "should destroy suppliermaster" do
    assert_difference('Suppliermaster.count', -1) do
      delete :destroy, id: @suppliermaster
    end

    assert_redirected_to suppliermasters_path
  end
end
