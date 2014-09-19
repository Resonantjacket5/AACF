require 'test_helper'

class CarouselItemsControllerTest < ActionController::TestCase
  setup do
    @carousel_item = carousel_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:carousel_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create carousel_item" do
    assert_difference('CarouselItem.count') do
      post :create, carousel_item: { disable: @carousel_item.disable, img_url: @carousel_item.img_url }
    end

    assert_redirected_to carousel_item_path(assigns(:carousel_item))
  end

  test "should show carousel_item" do
    get :show, id: @carousel_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @carousel_item
    assert_response :success
  end

  test "should update carousel_item" do
    patch :update, id: @carousel_item, carousel_item: { disable: @carousel_item.disable, img_url: @carousel_item.img_url }
    assert_redirected_to carousel_item_path(assigns(:carousel_item))
  end

  test "should destroy carousel_item" do
    assert_difference('CarouselItem.count', -1) do
      delete :destroy, id: @carousel_item
    end

    assert_redirected_to carousel_items_path
  end
end
