require 'rails_helper'

RSpec.describe "downloaders/edit", type: :view do
  let(:downloader) {
    Downloader.create!()
  }

  before(:each) do
    assign(:downloader, downloader)
  end

  it "renders the edit downloader form" do
    render

    assert_select "form[action=?][method=?]", downloader_path(downloader), "post" do
    end
  end
end
