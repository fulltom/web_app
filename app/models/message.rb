class Message < ActiveRecord::Base
	validates_presence_of(:name, :email, :body)
	# attr_accessor :message, :email, :body
	# validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
	# validates_length_of :body, :maximum => 200
end
