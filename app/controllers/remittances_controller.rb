class RemittancesController < ApplicationController

  helper_method :sort_column, :sort_direction

  def index
    @remittances = Remittance.search(params[:mag_id], params[:u_id], params[:issue_num], params[:su_id]).paginate(:per_page=>5, :page=> params[:page])
  end   

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

  private

  def sort_column
    Remittance.column_names.include?(params[:sort]) ? params[:sort] : "user_id"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end