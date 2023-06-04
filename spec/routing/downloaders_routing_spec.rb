require "rails_helper"

RSpec.describe DownloadersController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/downloaders").to route_to("downloaders#index")
    end

    it "routes to #new" do
      expect(get: "/downloaders/new").to route_to("downloaders#new")
    end

    it "routes to #show" do
      expect(get: "/downloaders/1").to route_to("downloaders#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/downloaders/1/edit").to route_to("downloaders#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/downloaders").to route_to("downloaders#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/downloaders/1").to route_to("downloaders#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/downloaders/1").to route_to("downloaders#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/downloaders/1").to route_to("downloaders#destroy", id: "1")
    end
  end
end
