class UserController < ApplicationController
	before_action :set_user,only: :show
	def index
		@users = User.all
	end
	def new
		@user = User.new
	end
	def show
	end
	def create
		@user = User.new(user_params)
		respond_to do |f|
			if @user.save
				f.html {redirect_to @user,notice:'User is successfully created'}
			else
				f.html {render :new}
			end
		end
	end
	private
		def user_params
			params.require(:user).permit(:name,:email,:roll,:hostel,:room,:phone)
		end
		def set_user
			@user = User.find(params[:id])
		end
end
