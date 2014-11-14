require 'test_helper'

class GetopisControllerTest < ActionController::TestCase
  setup do
    @getopi = getopis(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:getopis)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create getopi" do
    assert_difference('Getopi.count') do
      post :create, getopi: { description: @getopi.description, title: @getopi.title }
    end

    assert_redirected_to getopi_path(assigns(:getopi))
  end

  test "should show getopi" do
    get :show, id: @getopi
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @getopi
    assert_response :success
  end

  test "should update getopi" do
    patch :update, id: @getopi, getopi: { description: @getopi.description, title: @getopi.title }
    assert_redirected_to getopi_path(assigns(:getopi))
  end

  test "should destroy getopi" do
    assert_difference('Getopi.count', -1) do
      delete :destroy, id: @getopi
    end

    assert_redirected_to getopis_path
  end
end
