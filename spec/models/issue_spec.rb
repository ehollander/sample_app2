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

require 'spec_helper'

describe Issue do
  pending "add some examples to (or delete) #{__FILE__}"
end
