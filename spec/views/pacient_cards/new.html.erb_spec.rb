require 'rails_helper'

RSpec.describe "pacient_cards/new", type: :view do
  before(:each) do
    assign(:pacient_card, PacientCard.new())
  end

  it "renders new pacient_card form" do
    render

    assert_select "form[action=?][method=?]", pacient_cards_path, "post" do
    end
  end
end
