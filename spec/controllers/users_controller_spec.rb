require 'rails_helper'

describe UsersController do
  describe "Post #create" do
    context "with valid attributes" do
      it "creates new user and geocodes coordinates" do
        user = User.new(email: "me@me.com", password: "password", address: "44 Sulphur Springs Lane
Greensburg, PA 15601")
        user.save
      expect(user.latitude).not_to be_nil
      expect(user.longitude).not_to be_nil
    end
  end
end
end

