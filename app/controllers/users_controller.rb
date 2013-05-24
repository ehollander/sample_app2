class UsersController < ApplicationController
	before_filter :signed_in_user , only: [:edit, :update]
	#before_filter :correct_user,   only: [:edit, :update] =>was used to prevent authenticated user from viewing other authenticated users.  Turned off so admin users can edit other users.

	def show
  		@user = User.find(params[:id])
  	end

	def new
		@user = User.new
	end

	def signup

	end

	def create
	    @user = User.new(params[:user])
	    if @user.save
	      flash[:success] = "New User Created"	
	      redirect_to users_url
	    else
	      render 'new'
	    end
  	end

  	def edit
  		@user = User.find(params[:id])
  	end	

  	def update
	    @user = User.find(params[:id])
	    if @user.update_attributes(params[:user])
	      flash[:success] = "Profile updated"
	      #sign_in @user # disabled so admin user can update other users
	      redirect_to @user
	    else
	      render 'edit'
	    end
	end

	def index
    	@users = User.paginate(page: params[:page])
  	end

  	def destroy
    	User.find(params[:id]).destroy
    	flash[:success] = "User destroyed."
    	redirect_to users_url
  	end


  private

    def signed_in_user
      unless signed_in?
        store_location
        redirect_to signin_url, notice: "Please sign in."
      end
    end

    def correct_user
      @user = User.find(params[:id])
      redirect_to(root_path) unless current_user?(@user)
    end
end