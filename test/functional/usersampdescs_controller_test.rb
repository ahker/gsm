require 'test_helper'

class UsersampdescsControllerTest < ActionController::TestCase
  setup do
    @usersampdesc = usersampdescs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:usersampdescs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usersampdesc" do
    assert_difference('Usersampdesc.count') do
      post :create, usersampdesc: { desc: @usersampdesc.desc }
    end

    assert_redirected_to usersampdesc_path(assigns(:usersampdesc))
  end

  test "should show usersampdesc" do
    get :show, id: @usersampdesc
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usersampdesc
    assert_response :success
  end

  test "should update usersampdesc" do
    put :update, id: @usersampdesc, usersampdesc: { desc: @usersampdesc.desc }
    assert_redirected_to usersampdesc_path(assigns(:usersampdesc))
  end

  test "should destroy usersampdesc" do
    assert_difference('Usersampdesc.count', -1) do
      delete :destroy, id: @usersampdesc
    end

    assert_redirected_to usersampdescs_path
  end
end
