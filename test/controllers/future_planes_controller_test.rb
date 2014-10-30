require 'test_helper'

class FuturePlanesControllerTest < ActionController::TestCase
  setup do
    @future_plane = future_planes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:future_planes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create future_plane" do
    assert_difference('FuturePlane.count') do
      post :create, future_plane: { detail: @future_plane.detail, planning_time: @future_plane.planning_time, title: @future_plane.title }
    end

    assert_redirected_to future_plane_path(assigns(:future_plane))
  end

  test "should show future_plane" do
    get :show, id: @future_plane
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @future_plane
    assert_response :success
  end

  test "should update future_plane" do
    patch :update, id: @future_plane, future_plane: { detail: @future_plane.detail, planning_time: @future_plane.planning_time, title: @future_plane.title }
    assert_redirected_to future_plane_path(assigns(:future_plane))
  end

  test "should destroy future_plane" do
    assert_difference('FuturePlane.count', -1) do
      delete :destroy, id: @future_plane
    end

    assert_redirected_to future_planes_path
  end
end
