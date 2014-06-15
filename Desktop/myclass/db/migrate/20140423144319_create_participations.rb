class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.integer :user_id
      t.integer :community_id
      t.datetime :created_at

      t.timestamps
    end

    remove_index :users, :grade_id
    add_index :users, :grade_id, unique: false 
    remove_index :users, :school
    add_index :users, :school, unique: false 
  end
end
