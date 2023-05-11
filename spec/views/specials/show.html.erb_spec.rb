require 'rails_helper'

RSpec.describe "specials/show", type: :view do
  before(:each) do
    assign(:special, Special.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
