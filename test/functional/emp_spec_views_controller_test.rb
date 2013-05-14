require 'test_helper'

class EmpSpecViewsControllerTest < ActionController::TestCase
  setup do
    @emp_spec_view = emp_spec_views(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emp_spec_views)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emp_spec_view" do
    assert_difference('EmpSpecView.count') do
      post :create, emp_spec_view: {  }
    end

    assert_redirected_to emp_spec_view_path(assigns(:emp_spec_view))
  end

  test "should show emp_spec_view" do
    get :show, id: @emp_spec_view
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emp_spec_view
    assert_response :success
  end

  test "should update emp_spec_view" do
    put :update, id: @emp_spec_view, emp_spec_view: {  }
    assert_redirected_to emp_spec_view_path(assigns(:emp_spec_view))
  end

  test "should destroy emp_spec_view" do
    assert_difference('EmpSpecView.count', -1) do
      delete :destroy, id: @emp_spec_view
    end

    assert_redirected_to emp_spec_views_path
  end
end
