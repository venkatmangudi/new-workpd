require 'test_helper'

class GraphHospitalVacantByBandsControllerTest < ActionController::TestCase
  setup do
    @graph_hospital_vacant_by_band = graph_hospital_vacant_by_bands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graph_hospital_vacant_by_bands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graph_hospital_vacant_by_band" do
    assert_difference('GraphHospitalVacantByBand.count') do
      post :create, graph_hospital_vacant_by_band: {  }
    end

    assert_redirected_to graph_hospital_vacant_by_band_path(assigns(:graph_hospital_vacant_by_band))
  end

  test "should show graph_hospital_vacant_by_band" do
    get :show, id: @graph_hospital_vacant_by_band
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @graph_hospital_vacant_by_band
    assert_response :success
  end

  test "should update graph_hospital_vacant_by_band" do
    put :update, id: @graph_hospital_vacant_by_band, graph_hospital_vacant_by_band: {  }
    assert_redirected_to graph_hospital_vacant_by_band_path(assigns(:graph_hospital_vacant_by_band))
  end

  test "should destroy graph_hospital_vacant_by_band" do
    assert_difference('GraphHospitalVacantByBand.count', -1) do
      delete :destroy, id: @graph_hospital_vacant_by_band
    end

    assert_redirected_to graph_hospital_vacant_by_bands_path
  end
end
