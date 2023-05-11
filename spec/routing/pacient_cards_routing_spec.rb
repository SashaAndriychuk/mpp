require "rails_helper"

RSpec.describe PacientCardsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/pacient_cards").to route_to("pacient_cards#index")
    end

    it "routes to #new" do
      expect(get: "/pacient_cards/new").to route_to("pacient_cards#new")
    end

    it "routes to #show" do
      expect(get: "/pacient_cards/1").to route_to("pacient_cards#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/pacient_cards/1/edit").to route_to("pacient_cards#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/pacient_cards").to route_to("pacient_cards#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/pacient_cards/1").to route_to("pacient_cards#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/pacient_cards/1").to route_to("pacient_cards#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/pacient_cards/1").to route_to("pacient_cards#destroy", id: "1")
    end
  end
end
