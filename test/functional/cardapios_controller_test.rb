require 'test_helper'

class CardapiosControllerTest < ActionController::TestCase
  setup do
    @cardapio = cardapios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cardapios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cardapio" do
    assert_difference('Cardapio.count') do
      post :create, cardapio: { data: @cardapio.data, tipo: @cardapio.tipo }
    end

    assert_redirected_to cardapio_path(assigns(:cardapio))
  end

  test "should show cardapio" do
    get :show, id: @cardapio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cardapio
    assert_response :success
  end

  test "should update cardapio" do
    put :update, id: @cardapio, cardapio: { data: @cardapio.data, tipo: @cardapio.tipo }
    assert_redirected_to cardapio_path(assigns(:cardapio))
  end

  test "should destroy cardapio" do
    assert_difference('Cardapio.count', -1) do
      delete :destroy, id: @cardapio
    end

    assert_redirected_to cardapios_path
  end
end
