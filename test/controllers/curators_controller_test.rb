require 'test_helper'

class CuratorsControllerTest < ActionController::TestCase
  setup do
    @curator = curators(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:curators)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create curator" do
    assert_difference('Curator.count') do
      post :create, curator: {  }
    end

    assert_redirected_to curator_path(assigns(:curator))
  end

  test "should show curator" do
    get :show, id: @curator
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @curator
    assert_response :success
  end

  test "should update curator" do
    patch :update, id: @curator, curator: {  }
    assert_redirected_to curator_path(assigns(:curator))
  end

  test "should destroy curator" do
    assert_difference('Curator.count', -1) do
      delete :destroy, id: @curator
    end

    assert_redirected_to curators_path
  end
end
