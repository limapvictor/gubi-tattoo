require 'test_helper'

class EstudiosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estudio = estudios(:one)
  end

  test "should get index" do
    get estudios_url
    assert_response :success
  end

  test "should get new" do
    get new_estudio_url
    assert_response :success
  end

  test "should create estudio" do
    assert_difference('Estudio.count') do
      post estudios_url, params: { estudio: { Bairro: @estudio.Bairro, CEP: @estudio.CEP, CNPJ: @estudio.CNPJ, Cidade: @estudio.Cidade, Complemento: @estudio.Complemento, Email: @estudio.Email, Estado: @estudio.Estado, Facebook: @estudio.Facebook, Instagram: @estudio.Instagram, Nome: @estudio.Nome, Numero: @estudio.Numero, Rua: @estudio.Rua, Senha: @estudio.Senha } }
    end

    assert_redirected_to estudio_url(Estudio.last)
  end

  test "should show estudio" do
    get estudio_url(@estudio)
    assert_response :success
  end

  test "should get edit" do
    get edit_estudio_url(@estudio)
    assert_response :success
  end

  test "should update estudio" do
    patch estudio_url(@estudio), params: { estudio: { Bairro: @estudio.Bairro, CEP: @estudio.CEP, CNPJ: @estudio.CNPJ, Cidade: @estudio.Cidade, Complemento: @estudio.Complemento, Email: @estudio.Email, Estado: @estudio.Estado, Facebook: @estudio.Facebook, Instagram: @estudio.Instagram, Nome: @estudio.Nome, Numero: @estudio.Numero, Rua: @estudio.Rua, Senha: @estudio.Senha } }
    assert_redirected_to estudio_url(@estudio)
  end

  test "should destroy estudio" do
    assert_difference('Estudio.count', -1) do
      delete estudio_url(@estudio)
    end

    assert_redirected_to estudios_url
  end
end
