require 'rails_helper'

RSpec.describe "clinics/new", type: :view do
  before(:each) do
    assign(:clinic, Clinic.new())
  end

  it "renders new clinic form" do
    render

    assert_select "form[action=?][method=?]", clinics_path, "post" do
    end
  end
end
