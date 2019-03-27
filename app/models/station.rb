class Station
  def initialize(data)
    binding.pry
    @name = station[:station_name]
    @address = station[:street_address]
    @fuel_types = station[:fuel_type_code]
    @distance = station[:distance]
    @access = station[:access_days_time]
  end
end
