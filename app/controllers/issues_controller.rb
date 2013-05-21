class IssuesController < ApplicationController
  def new
  	@issue = Issue.new
  end

  def create
  	@issue = Issue.new(params[:issue])
	    if @issue.save
	      flash[:success] = "New Issue Created"	
	      redirect_to issues_url
	    else
	      render 'new'
	    end
  end

  def destroy
  	Issue.find(params[:id]).destroy
    	flash[:success] = "Issue destroyed."
    	redirect_to issues_url
  end

  def index
    	@issues = Issue.all
   end 	

  def show

  end

  def edit
  		@issue = Issue.find(params[:id])
  	end	

  def update
	    @issue = Issue.find(params[:id])
	    if @issue.update_attributes(params[:issue])
	      flash[:success] = "Issue updated"
	      redirect_to issues_url
	    else
	      render 'edit'
	    end
	end	
end