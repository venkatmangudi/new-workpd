require 'test_helper'

class EmployeeAgeByBandsControllerTest < ActionController::TestCase
  setup do
    @employee_age_by_band = employee_age_by_bands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_age_by_bands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_age_by_band" do
    assert_difference('EmployeeAgeByBand.count') do
      post :create, employee_age_by_band: {  }
    end

    assert_redirected_to employee_age_by_band_path(assigns(:employee_age_by_band))
  end

  test "should show employee_age_by_band" do
    get :show, id: @employee_age_by_band
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_age_by_band
    assert_response :success
  end

  test "should update employee_age_by_band" do
    put :update, id: @employee_age_by_band, employee_age_by_band: {  }
    assert_redirected_to employee_age_by_band_path(assigns(:employee_age_by_band))
  end

  test "should destroy employee_age_by_band" do
    assert_difference('EmployeeAgeByBand.count', -1) do
      delete :destroy, id: @employee_age_by_band
    end

    assert_redirected_to employee_age_by_bands_path
  end
end
