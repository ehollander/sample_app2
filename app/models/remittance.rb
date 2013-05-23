class Remittance < ActiveRecord::Base
  attr_accessible :issue_id, :notes, :sub_user_id, :user_id, :magazine_id, :myfile
  belongs_to :magazine
  belongs_to :issue
  belongs_to :user

  has_attached_file :myfile #, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
  					#:default_url => "/images/:style/missing.png"


  	def self.search(mag, uid, issue)


	 # if ((mag != '') && (uid != '') && (issue != '')) 	# If mag, user, issue are used
	 # 			Remittance.where('(magazine_id = ?) AND (user_id = ?) AND (issue_id = ?)', "#{mag}", "#{uid}", "#{issue}")
	 # else  ((mag != '') && (uid != '') && (issue =='')) 	# If mag, user are used, issue is empty
	 # 			Remittance.where('(magazine_id = ?) AND (user_id = ?)', "#{mag}", "#{uid}")
	  #end


  rem = Remittance.order(:id)
  rem = rem.where("magazine_id = ?", "#{mag}") if mag.present?
  rem = rem.where("user_id = ?", "#{uid}") if uid.present?
  rem = rem.where("issue_id = ?", "#{issue}") if issue.present?
  rem

	end
end


