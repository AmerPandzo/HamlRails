require 'test_helper'

class KlijentsControllerTest < ActionController::TestCase
  setup do
    @klijent = klijents(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:klijents)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create klijent" do
    assert_difference('Klijent.count') do
      post :create, klijent: { naziv: @klijent.naziv }
    end

    assert_redirected_to klijent_path(assigns(:klijent))
  end

  test "should show klijent" do
    get :show, id: @klijent
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @klijent
    assert_response :success
  end

  test "should update klijent" do
    patch :update, id: @klijent, klijent: { naziv: @klijent.naziv }
    assert_redirected_to klijent_path(assigns(:klijent))
  end

  test "should destroy klijent" do
    assert_difference('Klijent.count', -1) do
      delete :destroy, id: @klijent
    end

    assert_redirected_to klijents_path
  end
end
