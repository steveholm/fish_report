require "open-uri"
require "openssl"
require "json"

class FishStrategyController < ApplicationController


	def index

	    
	    # self.temperature = @forecast_json["current_observation"]["temp_f"].to_i
	    # self.wind_speed = @forecast_json["current_observation"]["wind_mph"].to_i
	    # self.humidity = @forecast_json["current_observation"]["relative_humidity"]
	    # self.condition = @forecast_json["current_observation"]["weather"]
	    # self.wind_direction = @forecast_json["current_observation"]["wind_dir"]

	    resource_url = "http://api.wunderground.com/api/2c5fbe86a7ad071f/geolookup/hourly/conditions/forecast/q/il/chicago.json"
	    @response = open(resource_url, :ssl_verify_mode => OpenSSL::SSL::VERIFY_NONE).read
	    @get_weather = JSON.parse(@response)
	    @weather = @get_weather['current_observation']


	    if @weather['weather'] == 'Mostly Cloudy'
	    	#raise @weather['weather'].inspect
	    	@locaton = Location.find_by_name('Hyde Park')
	    	@fly = Fly.where(:location_id => @location.id)
	    end

	    # @chances = "High"
	    # @spot = "Diversy Harbor"
	    # @fly = "Wholly Bugger"
	    # @tip = "If it's windy head to the north shore"


	    # @image = "body-bg"


	end

	# def index
	# 	@weather = CurrentWeather
	# end
end