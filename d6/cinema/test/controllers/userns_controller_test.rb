require 'test_helper'

class UsernsControllerTest < ActionController::TestCase
  setup do
    @usern = userns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:userns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create usern" do
    assert_difference('Usern.count') do
      post :create, usern: { location: @usern.location, nombre: @usern.nombre }
    end

    assert_redirected_to usern_path(assigns(:usern))
  end

  test "should show usern" do
    get :show, id: @usern
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @usern
    assert_response :success
  end

  test "should update usern" do
    patch :update, id: @usern, usern: { location: @usern.location, nombre: @usern.nombre }
    assert_redirected_to usern_path(assigns(:usern))
  end

  test "should destroy usern" do
    assert_difference('Usern.count', -1) do
      delete :destroy, id: @usern
    end

    assert_redirected_to userns_path
  end
end
