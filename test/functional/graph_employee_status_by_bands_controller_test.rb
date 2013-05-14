require 'test_helper'

class GraphEmployeeStatusByBandsControllerTest < ActionController::TestCase
  setup do
    @graph_employee_status_by_band = graph_employee_status_by_bands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graph_employee_status_by_bands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graph_employee_status_by_band" do
    assert_difference('GraphEmployeeStatusByBand.count') do
      post :create, graph_employee_status_by_band: {  }
    end

    assert_redirected_to graph_employee_status_by_band_path(assigns(:graph_employee_status_by_band))
  end

  test "should show graph_employee_status_by_band" do
    get :show, id: @graph_employee_status_by_band
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @graph_employee_status_by_band
    assert_response :success
  end

  test "should update graph_employee_status_by_band" do
    put :update, id: @graph_employee_status_by_band, graph_employee_status_by_band: {  }
    assert_redirected_to graph_employee_status_by_band_path(assigns(:graph_employee_status_by_band))
  end

  test "should destroy graph_employee_status_by_band" do
    assert_difference('GraphEmployeeStatusByBand.count', -1) do
      delete :destroy, id: @graph_employee_status_by_band
    end

    assert_redirected_to graph_employee_status_by_bands_path
  end
end
