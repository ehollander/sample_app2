class Subuser < ActiveRecord::Base
  attr_accessible :subname, :user_id
  belongs_to :user
end
