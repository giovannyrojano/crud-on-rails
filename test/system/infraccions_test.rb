require "application_system_test_case"

class InfraccionsTest < ApplicationSystemTestCase
  setup do
    @infraccion = infraccions(:one)
  end

  test "visiting the index" do
    visit infraccions_url
    assert_selector "h1", text: "Infraccions"
  end

  test "creating a Infraccion" do
    visit infraccions_url
    click_on "New Infraccion"

    fill_in "Prestamo", with: @infraccion.Prestamo_id
    check "Estado" if @infraccion.estado
    fill_in "Fecha", with: @infraccion.fecha
    fill_in "Valor", with: @infraccion.valor
    click_on "Create Infraccion"

    assert_text "Infraccion was successfully created"
    click_on "Back"
  end

  test "updating a Infraccion" do
    visit infraccions_url
    click_on "Edit", match: :first

    fill_in "Prestamo", with: @infraccion.Prestamo_id
    check "Estado" if @infraccion.estado
    fill_in "Fecha", with: @infraccion.fecha
    fill_in "Valor", with: @infraccion.valor
    click_on "Update Infraccion"

    assert_text "Infraccion was successfully updated"
    click_on "Back"
  end

  test "destroying a Infraccion" do
    visit infraccions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Infraccion was successfully destroyed"
  end
end
