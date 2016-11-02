class SearchController < ApplicationController
  def index

    response = Faraday.get "https://api.bestbuy.com/v1/stores((area(80202,25)))?apiKey=#{ENV['API_KEY']}&show=city,location,longName,phone,storeId,storeType&pageSize=20&format=json"
    response_json = JSON.parse(response.body)
    binding.pry

  end
end
