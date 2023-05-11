require 'rails_helper'

RSpec.describe "pacient_cards/edit", type: :view do
  let(:pacient_card) {
    PacientCard.create!()
  }

  before(:each) do
    assign(:pacient_card, pacient_card)
  end

  it "renders the edit pacient_card form" do
    render

    assert_select "form[action=?][method=?]", pacient_card_path(pacient_card), "post" do
    end
  end
end
