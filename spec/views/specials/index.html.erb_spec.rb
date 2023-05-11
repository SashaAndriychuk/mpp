require 'rails_helper'

RSpec.describe "specials/index", type: :view do
  before(:each) do
    assign(:specials, [
      Special.create!(),
      Special.create!()
    ])
  end

  it "renders a list of specials" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
