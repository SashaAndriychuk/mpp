require 'rails_helper'

RSpec.describe "clinics/show", type: :view do
  before(:each) do
    assign(:clinic, Clinic.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
