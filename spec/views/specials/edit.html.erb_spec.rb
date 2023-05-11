require 'rails_helper'

RSpec.describe "specials/edit", type: :view do
  let(:special) {
    Special.create!()
  }

  before(:each) do
    assign(:special, special)
  end

  it "renders the edit special form" do
    render

    assert_select "form[action=?][method=?]", special_path(special), "post" do
    end
  end
end
