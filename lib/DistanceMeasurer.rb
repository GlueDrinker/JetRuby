require 'open-uri'
require 'json'

class DistanceMeasurer
	attr_accessor :weight, :length, :width, :height, :distance, :price
	def initialize(weight, length, width, height, destination, origin)
		@weight = weight
		@length = length
		@width = width
		@height = height
		volume =  @length * @width * @height
		url = URI.parse(
	        "https://api.distancematrix.ai/maps/api/distancematrix/json?origins=" \
	        "#{origin}&destinations=#{destination}&key=7fJTHaH1zsjeoYk0CjKg7d9C41Rvz")
		response = open(url).read
		result = JSON.parse(response)
		@distance = result["rows"].first["elements"].first["distance"]["value"]
		@distance = distance.to_f
		@distance = @distance / 1000
		@distance = @distance.round
		if volume > 1000000
			if @weight > 10
				@price = distance * 3
			else
				@price = distance * 2
			end
		else
			@price = distance * 1
		end
	end
	def to_hash
		hash = {}
	    instance_variables.each { |var| hash[var.to_s.delete('@')] = instance_variable_get(var) }
   		hash
	end
end
