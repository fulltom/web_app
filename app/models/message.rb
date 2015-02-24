class Message < ActiveRecord::Base


	validates :name, presence: true
	validates :email, presence: true
	validates :body, presence: true
	# attr_accessor :message, :email, :body
	# validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, :on => :create
	# validates_length_of :body, :maximum => 200
end
