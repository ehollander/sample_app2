class MagazinesController < ApplicationController
  def new
  	@magazine = Magazine.new
  end

  def create
  	@magazine = Magazine.new(params[:magazine])
	    if @magazine.save
	      flash[:success] = "New Magazine Created"	
	      redirect_to magazines_url
	    else
	      render 'new'
	    end
  end

  def destroy
  	Magazine.find(params[:id]).destroy
    	flash[:success] = "Magazine destroyed."
    	redirect_to magazines_url
  end

  def index
    	@magazines = Magazine.all
   end 	

  def show

  end

  def edit
  		@magazine = Magazine.find(params[:id])
  	end	

  def update
	    @magazine = Magazine.find(params[:id])
	    if @magazine.update_attributes(params[:magazine])
	      flash[:success] = "Magazine updated"
	      redirect_to magazines_url
	    else
	      render 'edit'
	    end
	end	
end