# lib/image_fetcher.rb
require 'httparty'

class ImageFetcher
  def initialize(query)
    @query = query
    @api_key = ENV['PEXELS_API_KEY']
  end

  def fetch_image
    url = "https://api.pexels.com/v1/search?query=#{@query}&per_page=1"
    headers = { "Authorization" => @api_key }

    response = HTTParty.get(url, headers: headers)
    if response.success?
      data = JSON.parse(response.body)
      image_url = data["photos"][0]["src"]["original"]
      image_url
    else
      nil
    end
  end
end
