require 'test_helper'

class GraphEmployeeStatusesControllerTest < ActionController::TestCase
  setup do
    @graph_employee_status = graph_employee_statuses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:graph_employee_statuses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create graph_employee_status" do
    assert_difference('GraphEmployeeStatus.count') do
      post :create, graph_employee_status: {  }
    end

    assert_redirected_to graph_employee_status_path(assigns(:graph_employee_status))
  end

  test "should show graph_employee_status" do
    get :show, id: @graph_employee_status
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @graph_employee_status
    assert_response :success
  end

  test "should update graph_employee_status" do
    put :update, id: @graph_employee_status, graph_employee_status: {  }
    assert_redirected_to graph_employee_status_path(assigns(:graph_employee_status))
  end

  test "should destroy graph_employee_status" do
    assert_difference('GraphEmployeeStatus.count', -1) do
      delete :destroy, id: @graph_employee_status
    end

    assert_redirected_to graph_employee_statuses_path
  end
end
