require 'test_helper'

class ScenariosControllerTest < ActionController::TestCase
  setup do
    @scenario = scenarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scenarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scenario" do
    assert_difference('Scenario.count') do
      post :create, scenario: { all_camera: @scenario.all_camera, all_gps: @scenario.all_gps, all_phone: @scenario.all_phone, camera_per_team: @scenario.camera_per_team, description: @scenario.description, gps_per_team: @scenario.gps_per_team, phone_per_team: @scenario.phone_per_team, picture: @scenario.picture, title: @scenario.title }
    end

    assert_redirected_to scenario_path(assigns(:scenario))
  end

  test "should show scenario" do
    get :show, id: @scenario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scenario
    assert_response :success
  end

  test "should update scenario" do
    put :update, id: @scenario, scenario: { all_camera: @scenario.all_camera, all_gps: @scenario.all_gps, all_phone: @scenario.all_phone, camera_per_team: @scenario.camera_per_team, description: @scenario.description, gps_per_team: @scenario.gps_per_team, phone_per_team: @scenario.phone_per_team, picture: @scenario.picture, title: @scenario.title }
    assert_redirected_to scenario_path(assigns(:scenario))
  end

  test "should destroy scenario" do
    assert_difference('Scenario.count', -1) do
      delete :destroy, id: @scenario
    end

    assert_redirected_to scenarios_path
  end
end
