require 'test_helper'

class OrderlistsControllerTest < ActionController::TestCase
  setup do
    @orderlist = orderlists(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:orderlists)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create orderlist" do
    assert_difference('Orderlist.count') do
      post :create, :orderlist => @orderlist.attributes
    end

    assert_redirected_to orderlist_path(assigns(:orderlist))
  end

  test "should show orderlist" do
    get :show, :id => @orderlist.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @orderlist.to_param
    assert_response :success
  end

  test "should update orderlist" do
    put :update, :id => @orderlist.to_param, :orderlist => @orderlist.attributes
    assert_redirected_to orderlist_path(assigns(:orderlist))
  end

  test "should destroy orderlist" do
    assert_difference('Orderlist.count', -1) do
      delete :destroy, :id => @orderlist.to_param
    end

    assert_redirected_to orderlists_path
  end
end
