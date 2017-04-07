require 'test_helper'

class FondosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fondo = fondos(:one)
  end

  test "should get index" do
    get fondos_url
    assert_response :success
  end

  test "should get new" do
    get new_fondo_url
    assert_response :success
  end

  test "should create fondo" do
    assert_difference('Fondo.count') do
      post fondos_url, params: { fondo: { nombre: @fondo.nombre } }
    end

    assert_redirected_to fondo_url(Fondo.last)
  end

  test "should show fondo" do
    get fondo_url(@fondo)
    assert_response :success
  end

  test "should get edit" do
    get edit_fondo_url(@fondo)
    assert_response :success
  end

  test "should update fondo" do
    patch fondo_url(@fondo), params: { fondo: { nombre: @fondo.nombre } }
    assert_redirected_to fondo_url(@fondo)
  end

  test "should destroy fondo" do
    assert_difference('Fondo.count', -1) do
      delete fondo_url(@fondo)
    end

    assert_redirected_to fondos_url
  end
end
