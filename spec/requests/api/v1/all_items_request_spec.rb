require 'rails_helper'

RSpec.describe "Items CRUD API" do
  it "returns a list of all the items" do
    Item.create(name: "Tiny Dino")
    Item.create(name: "Firetruck")

    get "/api/v1/items.json"

    parsed_items = JSON.parse(response.body)

    expect(response.status).to eq(200)
    expect(parsed_items.count).to eq(2)
    expect(parsed_items.first["name"]).to eq("Tiny Dino")
  end
end
