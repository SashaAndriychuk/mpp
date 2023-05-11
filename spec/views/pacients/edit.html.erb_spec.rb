require 'rails_helper'

RSpec.describe "pacients/edit", type: :view do
  let(:pacient) {
    Pacient.create!()
  }

  before(:each) do
    assign(:pacient, pacient)
  end

  it "renders the edit pacient form" do
    render

    assert_select "form[action=?][method=?]", pacient_path(pacient), "post" do
    end
  end
end
