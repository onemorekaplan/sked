require 'test_helper'

class SkedlsControllerTest < ActionController::TestCase
  setup do
    @skedl = skedls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:skedls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create skedl" do
    assert_difference('Skedl.count') do
      post :create, skedl: { cal_type: @skedl.cal_type, description: @skedl.description }
    end

    assert_redirected_to skedl_path(assigns(:skedl))
  end

  test "should show skedl" do
    get :show, id: @skedl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @skedl
    assert_response :success
  end

  test "should update skedl" do
    put :update, id: @skedl, skedl: { cal_type: @skedl.cal_type, description: @skedl.description }
    assert_redirected_to skedl_path(assigns(:skedl))
  end

  test "should destroy skedl" do
    assert_difference('Skedl.count', -1) do
      delete :destroy, id: @skedl
    end

    assert_redirected_to skedls_path
  end
end
