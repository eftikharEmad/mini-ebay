require 'test_helper'

class CatigoriesControllerTest < ActionController::TestCase
  setup do
    @catigory = catigories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:catigories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create catigory" do
    assert_difference('Catigory.count') do
      post :create, catigory: { category_id: @catigory.category_id, category_name: @catigory.category_name, item_id: @catigory.item_id, sub_category_id: @catigory.sub_category_id }
    end

    assert_redirected_to catigory_path(assigns(:catigory))
  end

  test "should show catigory" do
    get :show, id: @catigory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @catigory
    assert_response :success
  end

  test "should update catigory" do
    patch :update, id: @catigory, catigory: { category_id: @catigory.category_id, category_name: @catigory.category_name, item_id: @catigory.item_id, sub_category_id: @catigory.sub_category_id }
    assert_redirected_to catigory_path(assigns(:catigory))
  end

  test "should destroy catigory" do
    assert_difference('Catigory.count', -1) do
      delete :destroy, id: @catigory
    end

    assert_redirected_to catigories_path
  end
end
