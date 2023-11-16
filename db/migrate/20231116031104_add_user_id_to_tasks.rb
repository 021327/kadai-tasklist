class AddUserIdToTasks < ActiveRecord::Migration[6.1]
  def change
    add_reference :tasks, :user, null: false, foreign_key: true
    
    t.timestamps
  end
end