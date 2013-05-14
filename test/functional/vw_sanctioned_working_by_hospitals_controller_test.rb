require 'test_helper'

class VwSanctionedWorkingByHospitalsControllerTest < ActionController::TestCase
  setup do
    @vw_sanctioned_working_by_hospital = vw_sanctioned_working_by_hospitals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vw_sanctioned_working_by_hospitals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vw_sanctioned_working_by_hospital" do
    assert_difference('VwSanctionedWorkingByHospital.count') do
      post :create, vw_sanctioned_working_by_hospital: {  }
    end

    assert_redirected_to vw_sanctioned_working_by_hospital_path(assigns(:vw_sanctioned_working_by_hospital))
  end

  test "should show vw_sanctioned_working_by_hospital" do
    get :show, id: @vw_sanctioned_working_by_hospital
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vw_sanctioned_working_by_hospital
    assert_response :success
  end

  test "should update vw_sanctioned_working_by_hospital" do
    put :update, id: @vw_sanctioned_working_by_hospital, vw_sanctioned_working_by_hospital: {  }
    assert_redirected_to vw_sanctioned_working_by_hospital_path(assigns(:vw_sanctioned_working_by_hospital))
  end

  test "should destroy vw_sanctioned_working_by_hospital" do
    assert_difference('VwSanctionedWorkingByHospital.count', -1) do
      delete :destroy, id: @vw_sanctioned_working_by_hospital
    end

    assert_redirected_to vw_sanctioned_working_by_hospitals_path
  end
end
