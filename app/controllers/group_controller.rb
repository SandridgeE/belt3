class GroupController < ApplicationController


def index
	@group = Group.all

end

def show

	@groups = Group.find(params[:id])


end

 def join
 	member = Member.create(user_id:current_user, group_id:@groups)
 		
 	
 		return redirect_to "/product"
 end
        

def create
		group = Group.create(group_params)
		
		
			if group.valid?
				return redirect_to '/users'
			end

			

		flash[:errors] = user.errors.full_messages
		return redirect_to :back

	end

def destroy
	groupss = Group.find(params[:id])
	groupss.delete
	groupss.save

	return redirect_to "/product"
end

	private
	def group_params
		params.require(:group).permit(:name, :description).merge(created: current_user.first_name)
	end




end
