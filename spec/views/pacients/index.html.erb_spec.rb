require 'rails_helper'

RSpec.describe "pacients/index", type: :view do
  before(:each) do
    assign(:pacients, [
      Pacient.create!(),
      Pacient.create!()
    ])
  end

  it "renders a list of pacients" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
