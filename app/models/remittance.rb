class Remittance < ActiveRecord::Base
  attr_accessible :issue_id, :notes, :sub_user_id, :user_id
  belongs_to :issue
  belongs_to :user
end
