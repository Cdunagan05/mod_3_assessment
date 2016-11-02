class SearchController < ApplicationController
  def index

    response = Faraday.get "api_key=#{ENV['API_KEY']}"
    response_json = JSON.parse(response.body)

  end
end
