require 'test_helper'

class EmpQualViewsControllerTest < ActionController::TestCase
  setup do
    @emp_qual_view = emp_qual_views(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emp_qual_views)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emp_qual_view" do
    assert_difference('EmpQualView.count') do
      post :create, emp_qual_view: {  }
    end

    assert_redirected_to emp_qual_view_path(assigns(:emp_qual_view))
  end

  test "should show emp_qual_view" do
    get :show, id: @emp_qual_view
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emp_qual_view
    assert_response :success
  end

  test "should update emp_qual_view" do
    put :update, id: @emp_qual_view, emp_qual_view: {  }
    assert_redirected_to emp_qual_view_path(assigns(:emp_qual_view))
  end

  test "should destroy emp_qual_view" do
    assert_difference('EmpQualView.count', -1) do
      delete :destroy, id: @emp_qual_view
    end

    assert_redirected_to emp_qual_views_path
  end
end
