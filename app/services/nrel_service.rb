class NrelService
  def get_zip_stations(zipcode)
    get_json("?location=#{zipcode}")
  end

  def get_json(uri)
    response = conn.get(uri)
    parsed = JSON.parse(response.body, symbolize_names: true)
  end

  def conn
    Faraday.new(url: "https://developer.nrel.gov/api/alt-fuel-stations/v1/nearest.json") do |faraday|
      faraday.headers["X-Api-Key"] = ENV['NREL-KEY']
      faraday.adapter Faraday.default_adapter
    end
  end
end
