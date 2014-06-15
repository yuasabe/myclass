class CreateCommunities < ActiveRecord::Migration
  def change
    create_table :communities do |t|
      t.string :name
      t.text :desc
      t.integer :user_ids

      t.timestamps
    end
  end
end
