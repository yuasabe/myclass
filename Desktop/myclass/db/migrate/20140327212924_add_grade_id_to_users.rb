class AddGradeIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :grade_id, :integer
    add_index :users, :grade_id
  end
end
