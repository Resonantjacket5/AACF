require 'test_helper'

class PrayerTimesControllerTest < ActionController::TestCase
  setup do
    @prayer_time = prayer_times(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prayer_times)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prayer_time" do
    assert_difference('PrayerTime.count') do
      post :create, prayer_time: { event_time: @prayer_time.event_time, image_active: @prayer_time.image_active, img_url: @prayer_time.img_url, location: @prayer_time.location, weekday: @prayer_time.weekday }
    end

    assert_redirected_to prayer_time_path(assigns(:prayer_time))
  end

  test "should show prayer_time" do
    get :show, id: @prayer_time
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prayer_time
    assert_response :success
  end

  test "should update prayer_time" do
    patch :update, id: @prayer_time, prayer_time: { event_time: @prayer_time.event_time, image_active: @prayer_time.image_active, img_url: @prayer_time.img_url, location: @prayer_time.location, weekday: @prayer_time.weekday }
    assert_redirected_to prayer_time_path(assigns(:prayer_time))
  end

  test "should destroy prayer_time" do
    assert_difference('PrayerTime.count', -1) do
      delete :destroy, id: @prayer_time
    end

    assert_redirected_to prayer_times_path
  end
end
