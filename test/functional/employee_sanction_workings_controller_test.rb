require 'test_helper'

class EmployeeSanctionWorkingsControllerTest < ActionController::TestCase
  setup do
    @employee_sanction_working = employee_sanction_workings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_sanction_workings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_sanction_working" do
    assert_difference('EmployeeSanctionWorking.count') do
      post :create, employee_sanction_working: {  }
    end

    assert_redirected_to employee_sanction_working_path(assigns(:employee_sanction_working))
  end

  test "should show employee_sanction_working" do
    get :show, id: @employee_sanction_working
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_sanction_working
    assert_response :success
  end

  test "should update employee_sanction_working" do
    put :update, id: @employee_sanction_working, employee_sanction_working: {  }
    assert_redirected_to employee_sanction_working_path(assigns(:employee_sanction_working))
  end

  test "should destroy employee_sanction_working" do
    assert_difference('EmployeeSanctionWorking.count', -1) do
      delete :destroy, id: @employee_sanction_working
    end

    assert_redirected_to employee_sanction_workings_path
  end
end
