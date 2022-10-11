class AddTaskIdToComments < ActiveRecord::Migration[7.0]
  def change
    add_column :comments, :task_id, :integer
    add_index :comments, :task_id
    add_column :comments, :user_id, :integer
    add_index :comments, :user_id
  end
end
