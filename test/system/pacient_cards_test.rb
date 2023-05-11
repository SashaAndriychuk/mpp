require "application_system_test_case"

class PacientCardsTest < ApplicationSystemTestCase
  setup do
    @pacient_card = pacient_cards(:one)
  end

  test "visiting the index" do
    visit pacient_cards_url
    assert_selector "h1", text: "Pacient cards"
  end

  test "should create pacient card" do
    visit pacient_cards_url
    click_on "New pacient card"

    click_on "Create Pacient card"

    assert_text "Pacient card was successfully created"
    click_on "Back"
  end

  test "should update Pacient card" do
    visit pacient_card_url(@pacient_card)
    click_on "Edit this pacient card", match: :first

    click_on "Update Pacient card"

    assert_text "Pacient card was successfully updated"
    click_on "Back"
  end

  test "should destroy Pacient card" do
    visit pacient_card_url(@pacient_card)
    click_on "Destroy this pacient card", match: :first

    assert_text "Pacient card was successfully destroyed"
  end
end
