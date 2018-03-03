class Group < ActiveRecord::Base
	
	validates :name, length: {minimum: 5}, presence: true
	validates :description, length: {minimum: 10}, presence:true

	has_many :member
	has_many :user, through: :member

end
