require 'test_helper'

class DietManagersControllerTest < ActionController::TestCase
  setup do
    @diet_manager = diet_managers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:diet_managers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create diet_manager" do
    assert_difference('DietManager.count') do
      post :create, diet_manager: {  }
    end

    assert_redirected_to diet_manager_path(assigns(:diet_manager))
  end

  test "should show diet_manager" do
    get :show, id: @diet_manager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @diet_manager
    assert_response :success
  end

  test "should update diet_manager" do
    patch :update, id: @diet_manager, diet_manager: {  }
    assert_redirected_to diet_manager_path(assigns(:diet_manager))
  end

  test "should destroy diet_manager" do
    assert_difference('DietManager.count', -1) do
      delete :destroy, id: @diet_manager
    end

    assert_redirected_to diet_managers_path
  end
end
