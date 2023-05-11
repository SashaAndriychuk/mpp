require 'rails_helper'

RSpec.describe "clinics/index", type: :view do
  before(:each) do
    assign(:clinics, [
      Clinic.create!(),
      Clinic.create!()
    ])
  end

  it "renders a list of clinics" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
