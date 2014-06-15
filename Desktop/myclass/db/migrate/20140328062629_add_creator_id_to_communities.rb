class AddCreatorIdToCommunities < ActiveRecord::Migration
  def change
    add_column :communities, :creator_id, :integer
    add_index :communities, :creator_id
  end
end
