class LocationsController < ApplicationController
    def index
        @locations = Location.all
    end

    def show
        @location = get_location
    end
    
    private

    def get_location
        Location.find(params[:id])
    end
end
