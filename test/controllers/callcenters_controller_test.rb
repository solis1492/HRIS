require 'test_helper'

class CallcentersControllerTest < ActionController::TestCase
  setup do
    @callcenter = callcenters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:callcenters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create callcenter" do
    assert_difference('Callcenter.count') do
      post :create, callcenter: { date: @callcenter.date, name: @callcenter.name, people_id: @callcenter.people_id }
    end

    assert_redirected_to callcenter_path(assigns(:callcenter))
  end

  test "should show callcenter" do
    get :show, id: @callcenter
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @callcenter
    assert_response :success
  end

  test "should update callcenter" do
    patch :update, id: @callcenter, callcenter: { date: @callcenter.date, name: @callcenter.name, people_id: @callcenter.people_id }
    assert_redirected_to callcenter_path(assigns(:callcenter))
  end

  test "should destroy callcenter" do
    assert_difference('Callcenter.count', -1) do
      delete :destroy, id: @callcenter
    end

    assert_redirected_to callcenters_path
  end
end
