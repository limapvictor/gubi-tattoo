require "application_system_test_case"

class TatuadorsTest < ApplicationSystemTestCase
  setup do
    @tatuador = tatuadors(:one)
  end

  test "visiting the index" do
    visit tatuadors_url
    assert_selector "h1", text: "Tatuadors"
  end

  test "creating a Tatuador" do
    visit tatuadors_url
    click_on "New Tatuador"

    fill_in "Cpf", with: @tatuador.CPF
    fill_in "Celular", with: @tatuador.Celular
    fill_in "Email", with: @tatuador.Email
    fill_in "Foto", with: @tatuador.Foto
    fill_in "Instagram", with: @tatuador.Instagram
    fill_in "Nome", with: @tatuador.Nome
    fill_in "Numerodeseguidores", with: @tatuador.NumeroDeSeguidores
    fill_in "Senha", with: @tatuador.Senha
    fill_in "Sobre", with: @tatuador.Sobre
    click_on "Create Tatuador"

    assert_text "Tatuador was successfully created"
    click_on "Back"
  end

  test "updating a Tatuador" do
    visit tatuadors_url
    click_on "Edit", match: :first

    fill_in "Cpf", with: @tatuador.CPF
    fill_in "Celular", with: @tatuador.Celular
    fill_in "Email", with: @tatuador.Email
    fill_in "Foto", with: @tatuador.Foto
    fill_in "Instagram", with: @tatuador.Instagram
    fill_in "Nome", with: @tatuador.Nome
    fill_in "Numerodeseguidores", with: @tatuador.NumeroDeSeguidores
    fill_in "Senha", with: @tatuador.Senha
    fill_in "Sobre", with: @tatuador.Sobre
    click_on "Update Tatuador"

    assert_text "Tatuador was successfully updated"
    click_on "Back"
  end

  test "destroying a Tatuador" do
    visit tatuadors_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tatuador was successfully destroyed"
  end
end
