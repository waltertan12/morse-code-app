require 'test_helper'

class MorsesControllerTest < ActionController::TestCase
  setup do
    @morse = morses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:morses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create morse" do
    assert_difference('Morse.count') do
      post :create, morse: { message: @morse.message, name: @morse.name }
    end

    assert_redirected_to morse_path(assigns(:morse))
  end

  test "should show morse" do
    get :show, id: @morse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @morse
    assert_response :success
  end

  test "should update morse" do
    patch :update, id: @morse, morse: { message: @morse.message, name: @morse.name }
    assert_redirected_to morse_path(assigns(:morse))
  end

  test "should destroy morse" do
    assert_difference('Morse.count', -1) do
      delete :destroy, id: @morse
    end

    assert_redirected_to morses_path
  end
end
