class CreateRemittances < ActiveRecord::Migration
  def change
    create_table :remittances do |t|
      t.integer :issue_id
      t.integer :user_id
      t.integer :sub_user_id
      t.string :notes

      t.timestamps
    end
  end
end
