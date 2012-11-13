require 'test_helper'

class PhotoItemsControllerTest < ActionController::TestCase
  setup do
    @photo_item = photo_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:photo_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create photo_item" do
    assert_difference('PhotoItem.count') do
      post :create, :photo_item => { :image => @photo_item.image, :title => @photo_item.title }
    end

    assert_redirected_to photo_item_path(assigns(:photo_item))
  end

  test "should show photo_item" do
    get :show, :id => @photo_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @photo_item
    assert_response :success
  end

  test "should update photo_item" do
    put :update, :id => @photo_item, :photo_item => { :image => @photo_item.image, :title => @photo_item.title }
    assert_redirected_to photo_item_path(assigns(:photo_item))
  end

  test "should destroy photo_item" do
    assert_difference('PhotoItem.count', -1) do
      delete :destroy, :id => @photo_item
    end

    assert_redirected_to photo_items_path
  end
end
