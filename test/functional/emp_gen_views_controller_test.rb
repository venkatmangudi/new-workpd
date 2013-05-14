require 'test_helper'

class EmpGenViewsControllerTest < ActionController::TestCase
  setup do
    @emp_gen_view = emp_gen_views(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:emp_gen_views)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create emp_gen_view" do
    assert_difference('EmpGenView.count') do
      post :create, emp_gen_view: {  }
    end

    assert_redirected_to emp_gen_view_path(assigns(:emp_gen_view))
  end

  test "should show emp_gen_view" do
    get :show, id: @emp_gen_view
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @emp_gen_view
    assert_response :success
  end

  test "should update emp_gen_view" do
    put :update, id: @emp_gen_view, emp_gen_view: {  }
    assert_redirected_to emp_gen_view_path(assigns(:emp_gen_view))
  end

  test "should destroy emp_gen_view" do
    assert_difference('EmpGenView.count', -1) do
      delete :destroy, id: @emp_gen_view
    end

    assert_redirected_to emp_gen_views_path
  end
end
