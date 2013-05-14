require 'test_helper'

class SanctionedByDesignationsControllerTest < ActionController::TestCase
  setup do
    @sanctioned_by_designation = sanctioned_by_designations(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sanctioned_by_designations)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sanctioned_by_designation" do
    assert_difference('SanctionedByDesignation.count') do
      post :create, sanctioned_by_designation: {  }
    end

    assert_redirected_to sanctioned_by_designation_path(assigns(:sanctioned_by_designation))
  end

  test "should show sanctioned_by_designation" do
    get :show, id: @sanctioned_by_designation
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sanctioned_by_designation
    assert_response :success
  end

  test "should update sanctioned_by_designation" do
    put :update, id: @sanctioned_by_designation, sanctioned_by_designation: {  }
    assert_redirected_to sanctioned_by_designation_path(assigns(:sanctioned_by_designation))
  end

  test "should destroy sanctioned_by_designation" do
    assert_difference('SanctionedByDesignation.count', -1) do
      delete :destroy, id: @sanctioned_by_designation
    end

    assert_redirected_to sanctioned_by_designations_path
  end
end
