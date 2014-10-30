require 'test_helper'

class PatentsControllerTest < ActionController::TestCase
  setup do
    @patent = patents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patent" do
    assert_difference('Patent.count') do
      post :create, patent: { detail: @patent.detail, people_involved: @patent.people_involved, register_date: @patent.register_date, status: @patent.status, title: @patent.title }
    end

    assert_redirected_to patent_path(assigns(:patent))
  end

  test "should show patent" do
    get :show, id: @patent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patent
    assert_response :success
  end

  test "should update patent" do
    patch :update, id: @patent, patent: { detail: @patent.detail, people_involved: @patent.people_involved, register_date: @patent.register_date, status: @patent.status, title: @patent.title }
    assert_redirected_to patent_path(assigns(:patent))
  end

  test "should destroy patent" do
    assert_difference('Patent.count', -1) do
      delete :destroy, id: @patent
    end

    assert_redirected_to patents_path
  end
end
