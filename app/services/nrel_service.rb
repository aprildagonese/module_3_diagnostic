class NrelService
  def get_zip_stations(zipcode)
    get_json("zipcode=#{zipcode}&")
  end

  def get_json(uri)
    response = conn.get(uri)
    JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1.json?") do |faraday|
      faraday.headers["api_key"] = ENV['NREL-KEY']
      faraday.adapter Faraday.default_adapter
    end
  end
end

  # def get_following
  #   get_json('following')
  # end
  #
  # def get_json(uri)
  #   response = conn.get(uri)
  #   JSON.parse(response.body, symbolize_names: true)
  # end
  #
  # def conn
  #   Faraday.new(url: "https://api.github.com/user/") do |faraday|
  #     faraday.headers["Authorization"] = "token #{@token}"
  #     faraday.adapter Faraday.default_adapter
  #   end
  # end
