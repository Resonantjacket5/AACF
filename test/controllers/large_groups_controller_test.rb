require 'test_helper'

class LargeGroupsControllerTest < ActionController::TestCase
  setup do
    @large_group = large_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:large_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create large_group" do
    assert_difference('LargeGroup.count') do
      post :create, large_group: { description: @large_group.description, event_time: @large_group.event_time, img_url: @large_group.img_url, location: @large_group.location, weekday: @large_group.weekday }
    end

    assert_redirected_to large_group_path(assigns(:large_group))
  end

  test "should show large_group" do
    get :show, id: @large_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @large_group
    assert_response :success
  end

  test "should update large_group" do
    patch :update, id: @large_group, large_group: { description: @large_group.description, event_time: @large_group.event_time, img_url: @large_group.img_url, location: @large_group.location, weekday: @large_group.weekday }
    assert_redirected_to large_group_path(assigns(:large_group))
  end

  test "should destroy large_group" do
    assert_difference('LargeGroup.count', -1) do
      delete :destroy, id: @large_group
    end

    assert_redirected_to large_groups_path
  end
end
