class CreateThreadModels < ActiveRecord::Migration
  def change
    create_table :thread_models do |t|

      t.timestamps
    end
  end
end
