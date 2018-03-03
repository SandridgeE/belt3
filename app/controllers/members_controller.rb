class MembersController < ApplicationController

	def join
		groupie = Group.find(params[:id])
		user = current_user
		current_user.member << groupie unless user.groupie.include? group
	


	end








end
