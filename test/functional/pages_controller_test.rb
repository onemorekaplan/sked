require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get open" do
    get :open
    assert_response :success
  end

  test "should get account" do
    get :account
    assert_response :success
  end

end
