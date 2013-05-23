class SubusersController < ApplicationController
  def new
  	@subuser = Subuser.new
    @user = User.find_by_id(params[:user_id])
  end

  def create
  	@subuser = Subuser.new(params[:subuser])
	    if @subuser.save
	      flash[:success] = "New Sub Agency Created"	
	      redirect_to users_url
	    else
	      render 'new'
	    end
  end

  def destroy
  	Subuser.find(params[:id]).destroy
    	flash[:success] = "Sub Agency destroyed."
    	redirect_to subusers_url
  end

  def index
    	@subusers = Subuser.all
   end 	

  def show

  end

  def edit
  		@subuser = Subuser.find(params[:id])
  	end	

  def update
	    @subuser = Subuser.find(params[:id])
	    if @subuser.update_attributes(params[:subuser])
	      flash[:success] = "Sub Agency updated"
	      redirect_to subusers_url
	    else
	      render 'edit'
	    end
	end	
end