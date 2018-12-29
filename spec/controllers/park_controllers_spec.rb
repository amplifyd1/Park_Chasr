require 'rails_helper'

describe ParksController do
  describe "Create Park" do
    context "with valid attributes" do
      it "creates new park and geocodes coordinates" do
        park = Park.new(name: "Dodger Stadium", description: "Home of the Dodgers", raw_address: "1000 Vin Scully Ave, Los Angeles, CA 90012, USA", image: "pic.jpg")
        park.save
        expect(park.latitude).not_to be_nil
    end
    it "creates new park and reverse geocodes address" do
      park = Park.new(name: "Angel Stadium", description: "Home of the Angels", latitude: 33.8003, longitude: -117.8827, image: "pic.jpg")
      park.save
      expect(park.address).not_to be_nil
    end
  end
  end
end
