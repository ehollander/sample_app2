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
  end

  def index
    	@magazines = Magazine.all
   end 	

  def show

  end
end