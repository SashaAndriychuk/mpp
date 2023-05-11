require 'rails_helper'

RSpec.describe "clinics/edit", type: :view do
  let(:clinic) {
    Clinic.create!()
  }

  before(:each) do
    assign(:clinic, clinic)
  end

  it "renders the edit clinic form" do
    render

    assert_select "form[action=?][method=?]", clinic_path(clinic), "post" do
    end
  end
end
