require 'rails_helper'

RSpec.describe "pacient_cards/show", type: :view do
  before(:each) do
    assign(:pacient_card, PacientCard.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
