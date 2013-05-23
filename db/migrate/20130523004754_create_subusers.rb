class CreateSubusers < ActiveRecord::Migration
  def change
    create_table :subusers do |t|
      t.string :subname
      t.integer :user_id

      t.timestamps
    end
  end
end
