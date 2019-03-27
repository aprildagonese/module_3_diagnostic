class StationsFacade
  attr_reader :zipcode

  def initialize(zipcode)
    @zipcode = zipcode
  end

  def zip_stations
    response = service.get_zip_stations(@zipcode)
    binding.pry
  end

  def service
    NrelService.new
  end
end
