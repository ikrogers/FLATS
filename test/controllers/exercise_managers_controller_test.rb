require 'test_helper'

class ExerciseManagersControllerTest < ActionController::TestCase
  setup do
    @exercise_manager = exercise_managers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercise_managers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise_manager" do
    assert_difference('ExerciseManager.count') do
      post :create, exercise_manager: {  }
    end

    assert_redirected_to exercise_manager_path(assigns(:exercise_manager))
  end

  test "should show exercise_manager" do
    get :show, id: @exercise_manager
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercise_manager
    assert_response :success
  end

  test "should update exercise_manager" do
    patch :update, id: @exercise_manager, exercise_manager: {  }
    assert_redirected_to exercise_manager_path(assigns(:exercise_manager))
  end

  test "should destroy exercise_manager" do
    assert_difference('ExerciseManager.count', -1) do
      delete :destroy, id: @exercise_manager
    end

    assert_redirected_to exercise_managers_path
  end
end
