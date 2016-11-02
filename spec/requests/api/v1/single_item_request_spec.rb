require 'rails_helper'

RSpec.describe "Items CRUD API" do
  it "returns a single item" do
    item_1 = Item.create(name: "Tiny Dino")
    item_2 = Item.create(name: "Firetruck")

    get "/api/v1/items/#{item_2.id}.json"

    parsed_items = JSON.parse(response.body)

    binding.pry
    expect(response.status).to eq(200)
    expect(parsed_items.first["name"]).to eq("Firetruck")
  end
end
