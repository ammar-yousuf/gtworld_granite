class StaticsController < ApplicationController
	def index
		
	end
	
	def get_in_touch
  	@message = Message.new
  end
end
