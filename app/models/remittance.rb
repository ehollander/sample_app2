# == Schema Information
#
# Table name: remittances
#
#  id                  :integer          not null, primary key
#  issue_id            :integer
#  user_id             :integer
#  subuser_id          :integer
#  notes               :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  magazine_id         :integer
#  myfile_file_name    :string(255)
#  myfile_content_type :string(255)
#  myfile_file_size    :integer
#  myfile_updated_at   :datetime
#

class Remittance < ActiveRecord::Base
  attr_accessible :issue_id, :notes, :subuser_id, :user_id, :magazine_id, :myfile
  belongs_to :magazine
  belongs_to :issue
  belongs_to :user
  belongs_to :subuser

  has_attached_file :myfile #, :styles => { :medium => "300x300>", :thumb => "100x100>" }, 
  							#:default_url => "/images/:style/missing.png"

  	def self.search(mag, uid, issue, suid)

	  rem = Remittance.order(:id)
	  rem = rem.where("magazine_id = ?", "#{mag}") if mag.present?
	  rem = rem.where("user_id = ?", "#{uid}") if uid.present?
	  rem = rem.where("issue_id = ?", "#{issue}") if issue.present?
	  rem = rem.where("sub_user_id = ?", "#{suid}") if suid.present?
	  rem
	end
end


