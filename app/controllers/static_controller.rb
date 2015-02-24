class StaticController < ApplicationController
	layout :false
	def index
		@message = Message.new
	end
	def create
		@message = Message.new(message_params)
		 if @message.save
		    render 'index'
		  else
		     render 'index'
		  end
	end
	private
		def message_params
			params.require(:message).permit(:name, :email, :body)
		end
end
