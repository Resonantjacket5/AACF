require 'test_helper'

class SmallGroupsControllerTest < ActionController::TestCase
  setup do
    @small_group = small_groups(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:small_groups)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create small_group" do
    assert_difference('SmallGroup.count') do
      post :create, small_group: { contact: @small_group.contact, disabled: @small_group.disabled, event_time: @small_group.event_time, img_url: @small_group.img_url, leaders: @small_group.leaders, leaders_note_1: @small_group.leaders_note_1, leaders_note_1_active: @small_group.leaders_note_1_active, leaders_note_2: @small_group.leaders_note_2, leaders_note_2_active: @small_group.leaders_note_2_active, leaders_note_3: @small_group.leaders_note_3, leaders_note_3_active: @small_group.leaders_note_3_active, location: @small_group.location, topic: @small_group.topic, weekday: @small_group.weekday }
    end

    assert_redirected_to small_group_path(assigns(:small_group))
  end

  test "should show small_group" do
    get :show, id: @small_group
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @small_group
    assert_response :success
  end

  test "should update small_group" do
    patch :update, id: @small_group, small_group: { contact: @small_group.contact, disabled: @small_group.disabled, event_time: @small_group.event_time, img_url: @small_group.img_url, leaders: @small_group.leaders, leaders_note_1: @small_group.leaders_note_1, leaders_note_1_active: @small_group.leaders_note_1_active, leaders_note_2: @small_group.leaders_note_2, leaders_note_2_active: @small_group.leaders_note_2_active, leaders_note_3: @small_group.leaders_note_3, leaders_note_3_active: @small_group.leaders_note_3_active, location: @small_group.location, topic: @small_group.topic, weekday: @small_group.weekday }
    assert_redirected_to small_group_path(assigns(:small_group))
  end

  test "should destroy small_group" do
    assert_difference('SmallGroup.count', -1) do
      delete :destroy, id: @small_group
    end

    assert_redirected_to small_groups_path
  end
end
