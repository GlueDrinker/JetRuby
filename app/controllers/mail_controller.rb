require 'DistanceMeasurer'
class MailController < ApplicationController

	def new
		
	end

	def show
		@request = Recording.find(params[:id])
		
	end
	def create
		@request = Recording.new(requestParams)
		@responce = DistanceMeasurer.new(@request.weight, @request.length, @request.width, @request.height, @request.destination, @request.origin)
		@request.price = @responce.price
		@request.distance = @responce.distance
		@request.save
		redirect_to mail_path(@request)
		

	end
	private def requestParams
		params.require(:request).permit(:name, :surname, :patronymic, :phone, :email, :weight, :length, :width, :height, :origin, :destination)
	end

end
