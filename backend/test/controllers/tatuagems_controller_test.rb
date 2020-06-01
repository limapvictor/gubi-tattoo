require 'test_helper'

class TatuagemsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tatuagem = tatuagems(:one)
  end

  test "should get index" do
    get tatuagems_url
    assert_response :success
  end

  test "should get new" do
    get new_tatuagem_url
    assert_response :success
  end

  test "should create tatuagem" do
    assert_difference('Tatuagem.count') do
      post tatuagems_url, params: { tatuagem: { : @tatuagem., IdTatuador: @tatuagem.IdTatuador, Link: @tatuagem.Link, NumeroSalvos: @tatuagem.NumeroSalvos, Titulo: @tatuagem.Titulo } }
    end

    assert_redirected_to tatuagem_url(Tatuagem.last)
  end

  test "should show tatuagem" do
    get tatuagem_url(@tatuagem)
    assert_response :success
  end

  test "should get edit" do
    get edit_tatuagem_url(@tatuagem)
    assert_response :success
  end

  test "should update tatuagem" do
    patch tatuagem_url(@tatuagem), params: { tatuagem: { : @tatuagem., IdTatuador: @tatuagem.IdTatuador, Link: @tatuagem.Link, NumeroSalvos: @tatuagem.NumeroSalvos, Titulo: @tatuagem.Titulo } }
    assert_redirected_to tatuagem_url(@tatuagem)
  end

  test "should destroy tatuagem" do
    assert_difference('Tatuagem.count', -1) do
      delete tatuagem_url(@tatuagem)
    end

    assert_redirected_to tatuagems_url
  end
end
