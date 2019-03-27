class StationsFacade
  def zip_stations
    response = service.get_stations
  end

  def service
    NrelService.new
  end
end
