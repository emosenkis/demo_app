require 'test_helper'

class GameTasksControllerTest < ActionController::TestCase
  setup do
    @game_task = game_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:game_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game_task" do
    assert_difference('GameTask.count') do
      post :create, game_task: { description: @game_task.description, manager: @game_task.manager, scenario: @game_task.scenario, title: @game_task.title }
    end

    assert_redirected_to game_task_path(assigns(:game_task))
  end

  test "should show game_task" do
    get :show, id: @game_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game_task
    assert_response :success
  end

  test "should update game_task" do
    put :update, id: @game_task, game_task: { description: @game_task.description, manager: @game_task.manager, scenario: @game_task.scenario, title: @game_task.title }
    assert_redirected_to game_task_path(assigns(:game_task))
  end

  test "should destroy game_task" do
    assert_difference('GameTask.count', -1) do
      delete :destroy, id: @game_task
    end

    assert_redirected_to game_tasks_path
  end
end
