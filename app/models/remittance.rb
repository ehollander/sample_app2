class Remittance < ActiveRecord::Base
  attr_accessible :issue_id, :notes, :sub_user_id, :user_id, :magazine_id, :myfile
  belongs_to :magazine
  belongs_to :issue
  belongs_to :user

  has_attached_file :myfile #, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
  					#:default_url => "/images/:style/missing.png"

  	def self.search(mag, uid)
	  if mag != ''
	  	if uid != ''
 		    Remittance.where('(magazine_id = ?) AND (user_id = ?)', "#{mag}", "#{uid}")
 		else
 		    Remittance.where('(magazine_id = ?)', "#{mag}")       
 		end
 	  else
		    Remittance.where('(user_id = ?)', "#{uid}")       
 	  end
	    #@permission = Permission.where(:user_id=>params[:user_id]).where(:project_id=>params[:project_id]).first
	  #else
	  #  scoped
	  #end
	end


	


end


