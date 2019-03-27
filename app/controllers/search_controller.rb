class SearchController < ApplicationController
  def index
    render locals: {
      stations_facade: StationsFacade.new
    }
  end
end
