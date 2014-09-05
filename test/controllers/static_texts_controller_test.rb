require 'test_helper'

class StaticTextsControllerTest < ActionController::TestCase
  setup do
    @static_text = static_texts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:static_texts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create static_text" do
    assert_difference('StaticText.count') do
      post :create, static_text: { active: @static_text.active, body: @static_text.body, title: @static_text.title }
    end

    assert_redirected_to static_text_path(assigns(:static_text))
  end

  test "should show static_text" do
    get :show, id: @static_text
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @static_text
    assert_response :success
  end

  test "should update static_text" do
    patch :update, id: @static_text, static_text: { active: @static_text.active, body: @static_text.body, title: @static_text.title }
    assert_redirected_to static_text_path(assigns(:static_text))
  end

  test "should destroy static_text" do
    assert_difference('StaticText.count', -1) do
      delete :destroy, id: @static_text
    end

    assert_redirected_to static_texts_path
  end
end
