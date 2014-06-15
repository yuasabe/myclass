class FixColumnName < ActiveRecord::Migration
  def change
  	rename_column :communities, :user_ids, :user_id
  end
end
