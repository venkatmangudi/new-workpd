require 'test_helper'

class EmployeeWorkDetailsControllerTest < ActionController::TestCase
  setup do
    @employee_work_detail = employee_work_details(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_work_details)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_work_detail" do
    assert_difference('EmployeeWorkDetail.count') do
      post :create, employee_work_detail: { designation_id: @employee_work_detail.designation_id, employee_class: @employee_work_detail.employee_class, employee_id: @employee_work_detail.employee_id, join_date: @employee_work_detail.join_date, medical_registration_date: @employee_work_detail.medical_registration_date, medical_registration_number: @employee_work_detail.medical_registration_number, pub_svc_comm_no: @employee_work_detail.pub_svc_comm_no, pub_svc_comm_year: @employee_work_detail.pub_svc_comm_year, recruitment_mode_id: @employee_work_detail.recruitment_mode_id, status_id: @employee_work_detail.status_id, superannuation_date: @employee_work_detail.superannuation_date }
    end

    assert_redirected_to employee_work_detail_path(assigns(:employee_work_detail))
  end

  test "should show employee_work_detail" do
    get :show, id: @employee_work_detail
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_work_detail
    assert_response :success
  end

  test "should update employee_work_detail" do
    put :update, id: @employee_work_detail, employee_work_detail: { designation_id: @employee_work_detail.designation_id, employee_class: @employee_work_detail.employee_class, employee_id: @employee_work_detail.employee_id, join_date: @employee_work_detail.join_date, medical_registration_date: @employee_work_detail.medical_registration_date, medical_registration_number: @employee_work_detail.medical_registration_number, pub_svc_comm_no: @employee_work_detail.pub_svc_comm_no, pub_svc_comm_year: @employee_work_detail.pub_svc_comm_year, recruitment_mode_id: @employee_work_detail.recruitment_mode_id, status_id: @employee_work_detail.status_id, superannuation_date: @employee_work_detail.superannuation_date }
    assert_redirected_to employee_work_detail_path(assigns(:employee_work_detail))
  end

  test "should destroy employee_work_detail" do
    assert_difference('EmployeeWorkDetail.count', -1) do
      delete :destroy, id: @employee_work_detail
    end

    assert_redirected_to employee_work_details_path
  end
end
