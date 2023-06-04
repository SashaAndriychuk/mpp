require 'rails_helper'

RSpec.describe "downloaders/index", type: :view do
  before(:each) do
    assign(:downloaders, [
      Downloader.create!(),
      Downloader.create!()
    ])
  end

  it "renders a list of downloaders" do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
  end
end
