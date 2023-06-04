require 'rails_helper'

RSpec.describe "downloaders/new", type: :view do
  before(:each) do
    assign(:downloader, Downloader.new())
  end

  it "renders new downloader form" do
    render

    assert_select "form[action=?][method=?]", downloaders_path, "post" do
    end
  end
end
