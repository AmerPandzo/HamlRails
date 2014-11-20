require 'test_helper'

class StavkasControllerTest < ActionController::TestCase
  setup do
    @stavka = stavkas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stavkas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stavka" do
    assert_difference('Stavka.count') do
      post :create, stavka: { faktura_id: @stavka.faktura_id, iznos: @stavka.iznos, naziv: @stavka.naziv }
    end

    assert_redirected_to stavka_path(assigns(:stavka))
  end

  test "should show stavka" do
    get :show, id: @stavka
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stavka
    assert_response :success
  end

  test "should update stavka" do
    patch :update, id: @stavka, stavka: { faktura_id: @stavka.faktura_id, iznos: @stavka.iznos, naziv: @stavka.naziv }
    assert_redirected_to stavka_path(assigns(:stavka))
  end

  test "should destroy stavka" do
    assert_difference('Stavka.count', -1) do
      delete :destroy, id: @stavka
    end

    assert_redirected_to stavkas_path
  end
end
