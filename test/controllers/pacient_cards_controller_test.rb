require "test_helper"

class PacientCardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pacient_card = pacient_cards(:one)
  end

  test "should get index" do
    get pacient_cards_url
    assert_response :success
  end

  test "should get new" do
    get new_pacient_card_url
    assert_response :success
  end

  test "should create pacient_card" do
    assert_difference("PacientCard.count") do
      post pacient_cards_url, params: { pacient_card: {  } }
    end

    assert_redirected_to pacient_card_url(PacientCard.last)
  end

  test "should show pacient_card" do
    get pacient_card_url(@pacient_card)
    assert_response :success
  end

  test "should get edit" do
    get edit_pacient_card_url(@pacient_card)
    assert_response :success
  end

  test "should update pacient_card" do
    patch pacient_card_url(@pacient_card), params: { pacient_card: {  } }
    assert_redirected_to pacient_card_url(@pacient_card)
  end

  test "should destroy pacient_card" do
    assert_difference("PacientCard.count", -1) do
      delete pacient_card_url(@pacient_card)
    end

    assert_redirected_to pacient_cards_url
  end
end
