require 'rails_helper'

RSpec.describe "Items CRUD API" do
  it "returns a list of all the items" do
    get "/api/v1/items.json"

    parsed_items = JSON.parse(response.body)

    expect(parsed_items.count).to eq(500)
    expect(parsed_items.first[name]).to eq("Incredible Aluminum Watch")
  end
end
