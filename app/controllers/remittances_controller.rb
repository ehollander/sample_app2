class RemittancesController < ApplicationController
  def new
  	@remittance = Remittance.new
  end

  def create
  	@remittance = Remittance.new(params[:remittance])
	    if @remittance.save
	      flash[:success] = "New Remittance Created"	
	      redirect_to remittances_url
	    else
	      render 'new'
	    end
  end

  def destroy
  	Remittance.find(params[:id]).destroy
    	flash[:success] = "Remittance destroyed."
    	redirect_to remittances_url
  end

  def index
    	@remittances = Remittance.all
      #@remittances = Remittance.search(params[:search])
   end 	

  def show

  end

  

  def edit
  		@remittance = Remittance.find(params[:id])
  	end	

  def update
	    @remittance = Remittance.find(params[:id])
	    if @remittance.update_attributes(params[:remittance])
	      flash[:success] = "Remittance updated"
	      redirect_to remittances_url
	    else
	      render 'edit'
	    end
	end	
end