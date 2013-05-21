# == Schema Information
#
# Table name: magazines
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  division   :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Magazine < ActiveRecord::Base
  attr_accessible :division, :title
  validates :title, presence: true

  has_many :issues
end
