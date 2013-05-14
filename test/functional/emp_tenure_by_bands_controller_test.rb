require 'test_helper'

class EmpTenureByBandsControllerTest < ActionController::TestCase
  setup do
    @emp_tenure_by_band = emp_tenure_by_bands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emp_tenure_by_bands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emp_tenure_by_band" do
    assert_difference('EmpTenureByBand.count') do
      post :create, emp_tenure_by_band: {  }
    end

    assert_redirected_to emp_tenure_by_band_path(assigns(:emp_tenure_by_band))
  end

  test "should show emp_tenure_by_band" do
    get :show, id: @emp_tenure_by_band
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emp_tenure_by_band
    assert_response :success
  end

  test "should update emp_tenure_by_band" do
    put :update, id: @emp_tenure_by_band, emp_tenure_by_band: {  }
    assert_redirected_to emp_tenure_by_band_path(assigns(:emp_tenure_by_band))
  end

  test "should destroy emp_tenure_by_band" do
    assert_difference('EmpTenureByBand.count', -1) do
      delete :destroy, id: @emp_tenure_by_band
    end

    assert_redirected_to emp_tenure_by_bands_path
  end
end
