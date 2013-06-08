class CreateListtasks < ActiveRecord::Migration
  def change
    create_table :listtasks do |t|
      t.integer :list_id
      t.integer :task_id

      t.timestamps
    end
  end
end
