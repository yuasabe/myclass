class CreateCommunitiesAndUsers < ActiveRecord::Migration
  def change
    create_table :communities_and_users do |t|
    	t.belongs_to :community
    	t.belongs_to :user
    end
  end
end
