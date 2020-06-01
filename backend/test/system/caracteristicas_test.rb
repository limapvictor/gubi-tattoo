require "application_system_test_case"

class CaracteristicasTest < ApplicationSystemTestCase
  setup do
    @caracteristica = caracteristicas(:one)
  end

  test "visiting the index" do
    visit caracteristicas_url
    assert_selector "h1", text: "Caracteristicas"
  end

  test "creating a Caracteristica" do
    visit caracteristicas_url
    click_on "New Caracteristica"

    fill_in "Descricao", with: @caracteristica.Descricao
    check "Estilo" if @caracteristica.Estilo
    click_on "Create Caracteristica"

    assert_text "Caracteristica was successfully created"
    click_on "Back"
  end

  test "updating a Caracteristica" do
    visit caracteristicas_url
    click_on "Edit", match: :first

    fill_in "Descricao", with: @caracteristica.Descricao
    check "Estilo" if @caracteristica.Estilo
    click_on "Update Caracteristica"

    assert_text "Caracteristica was successfully updated"
    click_on "Back"
  end

  test "destroying a Caracteristica" do
    visit caracteristicas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Caracteristica was successfully destroyed"
  end
end
