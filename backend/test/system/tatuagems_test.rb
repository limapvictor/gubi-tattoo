require "application_system_test_case"

class TatuagemsTest < ApplicationSystemTestCase
  setup do
    @tatuagem = tatuagems(:one)
  end

  test "visiting the index" do
    visit tatuagems_url
    assert_selector "h1", text: "Tatuagems"
  end

  test "creating a Tatuagem" do
    visit tatuagems_url
    click_on "New Tatuagem"

    fill_in "", with: @tatuagem.
    fill_in "Idtatuador", with: @tatuagem.IdTatuador
    fill_in "Link", with: @tatuagem.Link
    fill_in "Numerosalvos", with: @tatuagem.NumeroSalvos
    fill_in "Titulo", with: @tatuagem.Titulo
    click_on "Create Tatuagem"

    assert_text "Tatuagem was successfully created"
    click_on "Back"
  end

  test "updating a Tatuagem" do
    visit tatuagems_url
    click_on "Edit", match: :first

    fill_in "", with: @tatuagem.
    fill_in "Idtatuador", with: @tatuagem.IdTatuador
    fill_in "Link", with: @tatuagem.Link
    fill_in "Numerosalvos", with: @tatuagem.NumeroSalvos
    fill_in "Titulo", with: @tatuagem.Titulo
    click_on "Update Tatuagem"

    assert_text "Tatuagem was successfully updated"
    click_on "Back"
  end

  test "destroying a Tatuagem" do
    visit tatuagems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tatuagem was successfully destroyed"
  end
end
