require "application_system_test_case"

class NombreModelosTest < ApplicationSystemTestCase
  setup do
    @nombre_modelo = nombre_modelos(:one)
  end

  test "visiting the index" do
    visit nombre_modelos_url
    assert_selector "h1", text: "Nombre Modelos"
  end

  test "creating a Nombre modelo" do
    visit nombre_modelos_url
    click_on "New Nombre Modelo"

    fill_in "Campo1", with: @nombre_modelo.campo1
    fill_in "Campo2", with: @nombre_modelo.campo2
    click_on "Create Nombre modelo"

    assert_text "Nombre modelo was successfully created"
    click_on "Back"
  end

  test "updating a Nombre modelo" do
    visit nombre_modelos_url
    click_on "Edit", match: :first

    fill_in "Campo1", with: @nombre_modelo.campo1
    fill_in "Campo2", with: @nombre_modelo.campo2
    click_on "Update Nombre modelo"

    assert_text "Nombre modelo was successfully updated"
    click_on "Back"
  end

  test "destroying a Nombre modelo" do
    visit nombre_modelos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Nombre modelo was successfully destroyed"
  end
end
