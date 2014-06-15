class AddIndexToCommunitiesUsers < ActiveRecord::Migration
  def change
  	add_index :communities_users, :community_id
  	add_index :communities_users, :user_id
  end
end
