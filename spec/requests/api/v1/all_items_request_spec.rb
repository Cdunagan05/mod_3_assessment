require 'rails_helper'

RSpec.describe "Items CRUD API" do
  it "returns a list of all the items" do
    get "/api/v1/items.json"
  end
end
