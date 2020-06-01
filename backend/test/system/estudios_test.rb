require "application_system_test_case"

class EstudiosTest < ApplicationSystemTestCase
  setup do
    @estudio = estudios(:one)
  end

  test "visiting the index" do
    visit estudios_url
    assert_selector "h1", text: "Estudios"
  end

  test "creating a Estudio" do
    visit estudios_url
    click_on "New Estudio"

    fill_in "Bairro", with: @estudio.Bairro
    fill_in "Cep", with: @estudio.CEP
    fill_in "Cnpj", with: @estudio.CNPJ
    fill_in "Cidade", with: @estudio.Cidade
    fill_in "Complemento", with: @estudio.Complemento
    fill_in "Email", with: @estudio.Email
    fill_in "Estado", with: @estudio.Estado
    fill_in "Facebook", with: @estudio.Facebook
    fill_in "Instagram", with: @estudio.Instagram
    fill_in "Nome", with: @estudio.Nome
    fill_in "Numero", with: @estudio.Numero
    fill_in "Rua", with: @estudio.Rua
    fill_in "Senha", with: @estudio.Senha
    click_on "Create Estudio"

    assert_text "Estudio was successfully created"
    click_on "Back"
  end

  test "updating a Estudio" do
    visit estudios_url
    click_on "Edit", match: :first

    fill_in "Bairro", with: @estudio.Bairro
    fill_in "Cep", with: @estudio.CEP
    fill_in "Cnpj", with: @estudio.CNPJ
    fill_in "Cidade", with: @estudio.Cidade
    fill_in "Complemento", with: @estudio.Complemento
    fill_in "Email", with: @estudio.Email
    fill_in "Estado", with: @estudio.Estado
    fill_in "Facebook", with: @estudio.Facebook
    fill_in "Instagram", with: @estudio.Instagram
    fill_in "Nome", with: @estudio.Nome
    fill_in "Numero", with: @estudio.Numero
    fill_in "Rua", with: @estudio.Rua
    fill_in "Senha", with: @estudio.Senha
    click_on "Update Estudio"

    assert_text "Estudio was successfully updated"
    click_on "Back"
  end

  test "destroying a Estudio" do
    visit estudios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estudio was successfully destroyed"
  end
end
