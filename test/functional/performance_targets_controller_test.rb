require 'test_helper'

class PerformanceTargetsControllerTest < ActionController::TestCase
  setup do
    @performance_target = performance_targets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:performance_targets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create performance_target" do
    assert_difference('PerformanceTarget.count') do
      post :create, performance_target: { employee_cadre_id: @performance_target.employee_cadre_id, entity: @performance_target.entity, hospital_type_id: @performance_target.hospital_type_id, minimum_daily_work: @performance_target.minimum_daily_work, minimum_monthly_work: @performance_target.minimum_monthly_work, remarks: @performance_target.remarks, task: @performance_target.task }
    end

    assert_redirected_to performance_target_path(assigns(:performance_target))
  end

  test "should show performance_target" do
    get :show, id: @performance_target
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @performance_target
    assert_response :success
  end

  test "should update performance_target" do
    put :update, id: @performance_target, performance_target: { employee_cadre_id: @performance_target.employee_cadre_id, entity: @performance_target.entity, hospital_type_id: @performance_target.hospital_type_id, minimum_daily_work: @performance_target.minimum_daily_work, minimum_monthly_work: @performance_target.minimum_monthly_work, remarks: @performance_target.remarks, task: @performance_target.task }
    assert_redirected_to performance_target_path(assigns(:performance_target))
  end

  test "should destroy performance_target" do
    assert_difference('PerformanceTarget.count', -1) do
      delete :destroy, id: @performance_target
    end

    assert_redirected_to performance_targets_path
  end
end
