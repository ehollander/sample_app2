class AddAttachmentMyfileToRemittances < ActiveRecord::Migration
  def self.up
    change_table :remittances do |t|
      t.attachment :myfile
    end
  end

  def self.down
    drop_attached_file :remittances, :myfile
  end
end
