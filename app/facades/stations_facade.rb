class StationsFacade
  attr_reader :zipcode

  def initialize(zipcode)
    @zipcode = zipcode
  end

  def fifteen_stations
    x = zip_stations[:fuel_stations]
    binding.pry
  end

  def station_count
    zip_stations[:station_counts][:total]
  end

  def zip_stations
    response = service.get_zip_stations(@zipcode)
  end

  def service
    NrelService.new
  end
end
