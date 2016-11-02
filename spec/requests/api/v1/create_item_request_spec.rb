require 'rails_helper'

RSpec.describe "Items CRUD API" do
  it "creates an item" do
    Item.create(name: "Tiny Dino")
    Item.create(name: "Firetruck")

    expect(Item.count).to eq(2)

    params = { "name" => "Flubber",
               "description" => "This is crazy",
               "image_url" => "www.faker.fake.com"}

    post "/api/v1/items.json?", item: params

    expect(response.status).to eq(201)
    expect(Item.count).to eq(3)
    expect(Item.last["name"]).to eq("Flubber")
    expect(Item.last["description"]).to eq("This is crazy")
    expect(Item.last["image_url"]).to eq("www.faker.fake.com")
  end
end
