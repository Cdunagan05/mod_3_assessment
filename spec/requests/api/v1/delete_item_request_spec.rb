require 'rails_helper'

RSpec.describe "Items CRUD API" do
  it "Delete an Item" do
    item_1 = Item.create(name: "Tiny Dino")
    item_2 = Item.create(name: "Firetruck")

    expect(Item.count).to eq(2)

    delete "/api/v1/items/#{item_2.id}.json"

    expect(response.status).to eq(204)
    expect(Item.first["name"]).to eq("Tiny Dino")
    expect(Item.count).to eq(1)
  end
end
