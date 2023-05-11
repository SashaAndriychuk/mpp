require 'rails_helper'

RSpec.describe "pacient_cards/index", type: :view do
  before(:each) do
    assign(:pacient_cards, [
      PacientCard.create!(),
      PacientCard.create!()
    ])
  end

  it "renders a list of pacient_cards" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
