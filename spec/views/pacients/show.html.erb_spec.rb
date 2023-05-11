require 'rails_helper'

RSpec.describe "pacients/show", type: :view do
  before(:each) do
    assign(:pacient, Pacient.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
