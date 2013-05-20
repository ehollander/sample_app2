class CreateIssues < ActiveRecord::Migration
  def change
    create_table :issues do |t|
      t.integer :issue_number
      t.date :cover_date
      t.date :on_sale_date
      t.integer :magazine_id

      t.timestamps
    end
  end
end
