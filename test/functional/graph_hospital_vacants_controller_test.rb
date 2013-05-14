require 'test_helper'

class GraphHospitalVacantsControllerTest < ActionController::TestCase
  setup do
    @graph_hospital_vacant = graph_hospital_vacants(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graph_hospital_vacants)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graph_hospital_vacant" do
    assert_difference('GraphHospitalVacant.count') do
      post :create, graph_hospital_vacant: {  }
    end

    assert_redirected_to graph_hospital_vacant_path(assigns(:graph_hospital_vacant))
  end

  test "should show graph_hospital_vacant" do
    get :show, id: @graph_hospital_vacant
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @graph_hospital_vacant
    assert_response :success
  end

  test "should update graph_hospital_vacant" do
    put :update, id: @graph_hospital_vacant, graph_hospital_vacant: {  }
    assert_redirected_to graph_hospital_vacant_path(assigns(:graph_hospital_vacant))
  end

  test "should destroy graph_hospital_vacant" do
    assert_difference('GraphHospitalVacant.count', -1) do
      delete :destroy, id: @graph_hospital_vacant
    end

    assert_redirected_to graph_hospital_vacants_path
  end
end
