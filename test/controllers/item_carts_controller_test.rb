require 'test_helper'

class ItemCartsControllerTest < ActionController::TestCase
  setup do
    @item_cart = item_carts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_carts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_cart" do
    assert_difference('ItemCart.count') do
      post :create, item_cart: { cart_id: @item_cart.cart_id, item_id: @item_cart.item_id }
    end

    assert_redirected_to item_cart_path(assigns(:item_cart))
  end

  test "should show item_cart" do
    get :show, id: @item_cart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_cart
    assert_response :success
  end

  test "should update item_cart" do
    patch :update, id: @item_cart, item_cart: { cart_id: @item_cart.cart_id, item_id: @item_cart.item_id }
    assert_redirected_to item_cart_path(assigns(:item_cart))
  end

  test "should destroy item_cart" do
    assert_difference('ItemCart.count', -1) do
      delete :destroy, id: @item_cart
    end

    assert_redirected_to item_carts_path
  end
end
