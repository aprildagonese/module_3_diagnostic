class SearchController < ApplicationController
  def index
    render locals: {
      stations_facade: StationsFacade.new(params["q"])
    }
  end
end
