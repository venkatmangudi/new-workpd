require 'test_helper'

class RecruitmentModesControllerTest < ActionController::TestCase
  setup do
    @recruitment_mode = recruitment_modes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:recruitment_modes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create recruitment_mode" do
    assert_difference('RecruitmentMode.count') do
      post :create, recruitment_mode: { recruitment_mode_id: @recruitment_mode.recruitment_mode_id }
    end

    assert_redirected_to recruitment_mode_path(assigns(:recruitment_mode))
  end

  test "should show recruitment_mode" do
    get :show, id: @recruitment_mode
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @recruitment_mode
    assert_response :success
  end

  test "should update recruitment_mode" do
    put :update, id: @recruitment_mode, recruitment_mode: { recruitment_mode_id: @recruitment_mode.recruitment_mode_id }
    assert_redirected_to recruitment_mode_path(assigns(:recruitment_mode))
  end

  test "should destroy recruitment_mode" do
    assert_difference('RecruitmentMode.count', -1) do
      delete :destroy, id: @recruitment_mode
    end

    assert_redirected_to recruitment_modes_path
  end
end
