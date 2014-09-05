require 'test_helper'

class LeadersControllerTest < ActionController::TestCase
  setup do
    @leader = leaders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:leaders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create leader" do
    assert_difference('Leader.count') do
      post :create, leader: { contact_ok: @leader.contact_ok, email: @leader.email, graduated: @leader.graduated, hometown: @leader.hometown, interests: @leader.interests, leadership_position: @leader.leadership_position, major: @leader.major, name: @leader.name, past_positions: @leader.past_positions, position: @leader.position, post_grad_email: @leader.post_grad_email, strange_fact: @leader.strange_fact, year: @leader.year }
    end

    assert_redirected_to leader_path(assigns(:leader))
  end

  test "should show leader" do
    get :show, id: @leader
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @leader
    assert_response :success
  end

  test "should update leader" do
    patch :update, id: @leader, leader: { contact_ok: @leader.contact_ok, email: @leader.email, graduated: @leader.graduated, hometown: @leader.hometown, interests: @leader.interests, leadership_position: @leader.leadership_position, major: @leader.major, name: @leader.name, past_positions: @leader.past_positions, position: @leader.position, post_grad_email: @leader.post_grad_email, strange_fact: @leader.strange_fact, year: @leader.year }
    assert_redirected_to leader_path(assigns(:leader))
  end

  test "should destroy leader" do
    assert_difference('Leader.count', -1) do
      delete :destroy, id: @leader
    end

    assert_redirected_to leaders_path
  end
end
