class StationsFacade
  attr_reader :zipcode, :stations

  def initialize(zipcode)
    @zipcode = zipcode
    create_stations
    @stations = []
  end

  def fifteen_stations
    x = zip_stations[:fuel_stations]
  end

  def station_count
    zip_stations[:station_counts][:total]
  end

  def create_stations
    zip_stations.each do |info|
      station = Station.new(info)
      @stations << station
    end
  end

  def zip_stations
    response = service.get_zip_stations(@zipcode)
  end

  def service
    NrelService.new
  end
end
