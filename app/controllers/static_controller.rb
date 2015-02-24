class StaticController < ApplicationController

	def index
		@message = Message.new
	end
	def create
		@message = Message.new(message_params)
		@message.save
		redirect_to '/'
	end
	private 
		def message_params 
			params.require(:message).permit(:name, :email, :body)
		end
end
