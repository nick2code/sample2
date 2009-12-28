require 'test_helper'

class TeachersControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:teachers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create teacher" do
    assert_difference('Teacher.count') do
      post :create, :teacher => { }
    end

    assert_redirected_to teacher_path(assigns(:teacher))
  end

  test "should show teacher" do
    get :show, :id => teachers(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => teachers(:one).to_param
    assert_response :success
  end

  test "should update teacher" do
    put :update, :id => teachers(:one).to_param, :teacher => { }
    assert_redirected_to teacher_path(assigns(:teacher))
  end

  test "should destroy teacher" do
    assert_difference('Teacher.count', -1) do
      delete :destroy, :id => teachers(:one).to_param
    end

    assert_redirected_to teachers_path
  end
end
