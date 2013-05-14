require 'test_helper'

class PerformaonesControllerTest < ActionController::TestCase
  setup do
    @performaone = performaones(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:performaones)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create performaone" do
    assert_difference('Performaone.count') do
      post :create, performaone: { court_presence: @performaone.court_presence, emer_calls: @performaone.emer_calls, emer_duty: @performaone.emer_duty, employee_id: @performaone.employee_id, equip: @performaone.equip, equipdefic: @performaone.equipdefic, equipdetail: @performaone.equipdetail, image_tests: @performaone.image_tests, lab_tests: @performaone.lab_tests, leave_taken: @performaone.leave_taken, mlc_perf: @performaone.mlc_perf, op_caesarion: @performaone.op_caesarion, op_major: @performaone.op_major, op_minor: @performaone.op_minor, patients_admit: @performaone.patients_admit, patients_opd: @performaone.patients_opd, patients_ref: @performaone.patients_ref, postmor_perf: @performaone.postmor_perf }
    end

    assert_redirected_to performaone_path(assigns(:performaone))
  end

  test "should show performaone" do
    get :show, id: @performaone
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @performaone
    assert_response :success
  end

  test "should update performaone" do
    put :update, id: @performaone, performaone: { court_presence: @performaone.court_presence, emer_calls: @performaone.emer_calls, emer_duty: @performaone.emer_duty, employee_id: @performaone.employee_id, equip: @performaone.equip, equipdefic: @performaone.equipdefic, equipdetail: @performaone.equipdetail, image_tests: @performaone.image_tests, lab_tests: @performaone.lab_tests, leave_taken: @performaone.leave_taken, mlc_perf: @performaone.mlc_perf, op_caesarion: @performaone.op_caesarion, op_major: @performaone.op_major, op_minor: @performaone.op_minor, patients_admit: @performaone.patients_admit, patients_opd: @performaone.patients_opd, patients_ref: @performaone.patients_ref, postmor_perf: @performaone.postmor_perf }
    assert_redirected_to performaone_path(assigns(:performaone))
  end

  test "should destroy performaone" do
    assert_difference('Performaone.count', -1) do
      delete :destroy, id: @performaone
    end

    assert_redirected_to performaones_path
  end
end
