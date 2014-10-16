require 'test_helper'

class CartoonsControllerTest < ActionController::TestCase
  setup do
    @cartoon = cartoons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cartoons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cartoon" do
    assert_difference('Cartoon.count') do
      post :create, cartoon: { characters: @cartoon.characters, name: @cartoon.name, onair: @cartoon.onair, photo_url: @cartoon.photo_url }
    end

    assert_redirected_to cartoon_path(assigns(:cartoon))
  end

  test "should show cartoon" do
    get :show, id: @cartoon
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cartoon
    assert_response :success
  end

  test "should update cartoon" do
    patch :update, id: @cartoon, cartoon: { characters: @cartoon.characters, name: @cartoon.name, onair: @cartoon.onair, photo_url: @cartoon.photo_url }
    assert_redirected_to cartoon_path(assigns(:cartoon))
  end

  test "should destroy cartoon" do
    assert_difference('Cartoon.count', -1) do
      delete :destroy, id: @cartoon
    end

    assert_redirected_to cartoons_path
  end
end
