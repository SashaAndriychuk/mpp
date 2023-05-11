require 'rails_helper'

RSpec.describe "pacients/new", type: :view do
  before(:each) do
    assign(:pacient, Pacient.new())
  end

  it "renders new pacient form" do
    render

    assert_select "form[action=?][method=?]", pacients_path, "post" do
    end
  end
end
