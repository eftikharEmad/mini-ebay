require 'test_helper'

class InvociesControllerTest < ActionController::TestCase
  setup do
    @invocy = invocies(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:invocies)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create invocy" do
    assert_difference('Invocy.count') do
      post :create, invocy: { cart_id: @invocy.cart_id, invocice_id: @invocy.invocice_id, total_price: @invocy.total_price }
    end

    assert_redirected_to invocy_path(assigns(:invocy))
  end

  test "should show invocy" do
    get :show, id: @invocy
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @invocy
    assert_response :success
  end

  test "should update invocy" do
    patch :update, id: @invocy, invocy: { cart_id: @invocy.cart_id, invocice_id: @invocy.invocice_id, total_price: @invocy.total_price }
    assert_redirected_to invocy_path(assigns(:invocy))
  end

  test "should destroy invocy" do
    assert_difference('Invocy.count', -1) do
      delete :destroy, id: @invocy
    end

    assert_redirected_to invocies_path
  end
end
