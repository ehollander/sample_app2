class AddMagazineIdToRemittances < ActiveRecord::Migration
  def change
    add_column :remittances, :magazine_id, :integer
  end
end
