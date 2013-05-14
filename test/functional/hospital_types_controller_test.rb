require 'test_helper'

class HospitalTypesControllerTest < ActionController::TestCase
  setup do
    @hospital_type = hospital_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hospital_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hospital_type" do
    assert_difference('HospitalType.count') do
      post :create, hospital_type: { hospital_type: @hospital_type.hospital_type, remarks: @hospital_type.remarks }
    end

    assert_redirected_to hospital_type_path(assigns(:hospital_type))
  end

  test "should show hospital_type" do
    get :show, id: @hospital_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hospital_type
    assert_response :success
  end

  test "should update hospital_type" do
    put :update, id: @hospital_type, hospital_type: { hospital_type: @hospital_type.hospital_type, remarks: @hospital_type.remarks }
    assert_redirected_to hospital_type_path(assigns(:hospital_type))
  end

  test "should destroy hospital_type" do
    assert_difference('HospitalType.count', -1) do
      delete :destroy, id: @hospital_type
    end

    assert_redirected_to hospital_types_path
  end
end
