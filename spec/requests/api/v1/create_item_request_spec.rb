require 'rails_helper'

RSpec.describe "Items CRUD API" do
  it "creates an item" do
    Item.create(name: "Tiny Dino")
    Item.create(name: "Firetruck")

    expect(Item.count).to eq(2)

    post "/api/v1/items.json"

    parsed_items = JSON.parse(response.body)

    expect(response.status).to eq(201)
    expect(parsed_items.count).to eq(3)
    expect(parsed_items.last["name"]).to eq("Flubber")
  end
end
