class StaticController < ApplicationController

	def index
		@message = Message.new
	end
	def create
		@message = Message.new(message_params)
		if @message.valid?
			flash[:error] = "Somethig is wrong"
			redirect_to root_url
		else
			flash[:notice] = "Some text indicating it was created"
			@message.save
			redirect_to root_url
		end
	end
	private
		def message_params
			params.require(:message).permit(:name, :email, :body)
		end
end
