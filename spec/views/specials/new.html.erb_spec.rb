require 'rails_helper'

RSpec.describe "specials/new", type: :view do
  before(:each) do
    assign(:special, Special.new())
  end

  it "renders new special form" do
    render

    assert_select "form[action=?][method=?]", specials_path, "post" do
    end
  end
end
