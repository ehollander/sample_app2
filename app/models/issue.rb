# == Schema Information
#
# Table name: issues
#
#  id           :integer          not null, primary key
#  issue_number :integer
#  cover_date   :date
#  on_sale_date :date
#  magazine_id  :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Issue < ActiveRecord::Base
  attr_accessible :cover_date, :issue_number, :magazine_id, :on_sale_date
  validates :issue_number, presence: true
  validates :magazine_id, presence: true
  has_many :remittances
  belongs_to :magazine


  def select
    @issue_id = Issue.where(:magazine_id => params[:magazine_id])
    render :partial => "issue_partial", :object => @issues
  end
  
end
