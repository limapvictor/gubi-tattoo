require 'test_helper'

class TatuadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tatuador = tatuadors(:one)
  end

  test "should get index" do
    get tatuadors_url
    assert_response :success
  end

  test "should get new" do
    get new_tatuador_url
    assert_response :success
  end

  test "should create tatuador" do
    assert_difference('Tatuador.count') do
      post tatuadors_url, params: { tatuador: { CPF: @tatuador.CPF, Celular: @tatuador.Celular, Email: @tatuador.Email, Foto: @tatuador.Foto, Instagram: @tatuador.Instagram, Nome: @tatuador.Nome, NumeroDeSeguidores: @tatuador.NumeroDeSeguidores, Senha: @tatuador.Senha, Sobre: @tatuador.Sobre } }
    end

    assert_redirected_to tatuador_url(Tatuador.last)
  end

  test "should show tatuador" do
    get tatuador_url(@tatuador)
    assert_response :success
  end

  test "should get edit" do
    get edit_tatuador_url(@tatuador)
    assert_response :success
  end

  test "should update tatuador" do
    patch tatuador_url(@tatuador), params: { tatuador: { CPF: @tatuador.CPF, Celular: @tatuador.Celular, Email: @tatuador.Email, Foto: @tatuador.Foto, Instagram: @tatuador.Instagram, Nome: @tatuador.Nome, NumeroDeSeguidores: @tatuador.NumeroDeSeguidores, Senha: @tatuador.Senha, Sobre: @tatuador.Sobre } }
    assert_redirected_to tatuador_url(@tatuador)
  end

  test "should destroy tatuador" do
    assert_difference('Tatuador.count', -1) do
      delete tatuador_url(@tatuador)
    end

    assert_redirected_to tatuadors_url
  end
end
