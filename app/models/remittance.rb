class Remittance < ActiveRecord::Base
  attr_accessible :issue_id, :notes, :sub_user_id, :user_id, :magazine_id
  belongs_to :magazine
  belongs_to :issue
  belongs_to :user

  	def self.search(search)
	  if search
	    Remittance.where('magazine_id LIKE ?', "%#{search}%")

	    #@permission = Permission.where(:user_id=>params[:user_id]).where(:project_id=>params[:project_id]).first
	  else
	    scoped
	  end
	end
end
