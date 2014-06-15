class RenameUsersCommunities < ActiveRecord::Migration
  def change
  	rename_table :communities_and_users, :communities_users
  end
end
