# == Schema Information
#
# Table name: subusers
#
#  id         :integer          not null, primary key
#  subname    :string(255)
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Subuser < ActiveRecord::Base
  attr_accessible :subname, :user_id
  belongs_to :user
  has_many :remittances
end
