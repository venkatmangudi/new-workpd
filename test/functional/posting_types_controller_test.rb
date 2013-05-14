require 'test_helper'

class PostingTypesControllerTest < ActionController::TestCase
  setup do
    @posting_type = posting_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:posting_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create posting_type" do
    assert_difference('PostingType.count') do
      post :create, posting_type: { posting_type_name: @posting_type.posting_type_name }
    end

    assert_redirected_to posting_type_path(assigns(:posting_type))
  end

  test "should show posting_type" do
    get :show, id: @posting_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @posting_type
    assert_response :success
  end

  test "should update posting_type" do
    put :update, id: @posting_type, posting_type: { posting_type_name: @posting_type.posting_type_name }
    assert_redirected_to posting_type_path(assigns(:posting_type))
  end

  test "should destroy posting_type" do
    assert_difference('PostingType.count', -1) do
      delete :destroy, id: @posting_type
    end

    assert_redirected_to posting_types_path
  end
end
