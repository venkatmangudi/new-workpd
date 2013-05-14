require 'test_helper'

class EmployeeCadresControllerTest < ActionController::TestCase
  setup do
    @employee_cadre = employee_cadres(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:employee_cadres)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create employee_cadre" do
    assert_difference('EmployeeCadre.count') do
      post :create, employee_cadre: { employee_cadre_type: @employee_cadre.employee_cadre_type }
    end

    assert_redirected_to employee_cadre_path(assigns(:employee_cadre))
  end

  test "should show employee_cadre" do
    get :show, id: @employee_cadre
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @employee_cadre
    assert_response :success
  end

  test "should update employee_cadre" do
    put :update, id: @employee_cadre, employee_cadre: { employee_cadre_type: @employee_cadre.employee_cadre_type }
    assert_redirected_to employee_cadre_path(assigns(:employee_cadre))
  end

  test "should destroy employee_cadre" do
    assert_difference('EmployeeCadre.count', -1) do
      delete :destroy, id: @employee_cadre
    end

    assert_redirected_to employee_cadres_path
  end
end
