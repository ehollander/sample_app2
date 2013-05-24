class FixColumnName < ActiveRecord::Migration
  def up
  	rename_column :remittances, :sub_user_id, :subuser_id
  end

  def down
  	rename_column :remittances, :subuser_id, :sub_user_id
  end
end
