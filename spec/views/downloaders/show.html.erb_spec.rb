require 'rails_helper'

RSpec.describe "downloaders/show", type: :view do
  before(:each) do
    assign(:downloader, Downloader.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
