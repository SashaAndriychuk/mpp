require "rails_helper"

RSpec.describe PacientsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/pacients").to route_to("pacients#index")
    end

    it "routes to #new" do
      expect(get: "/pacients/new").to route_to("pacients#new")
    end

    it "routes to #show" do
      expect(get: "/pacients/1").to route_to("pacients#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/pacients/1/edit").to route_to("pacients#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/pacients").to route_to("pacients#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/pacients/1").to route_to("pacients#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/pacients/1").to route_to("pacients#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/pacients/1").to route_to("pacients#destroy", id: "1")
    end
  end
end
