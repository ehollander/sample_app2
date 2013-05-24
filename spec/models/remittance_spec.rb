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

require 'spec_helper'

describe Remittance do
  pending "add some examples to (or delete) #{__FILE__}"
end

