class CreateProjectUsers < ActiveRecord::Migration
  def change
    create_table :project_users do |t|
      t.references :user
      t.references :project
      t.timestamps null: false
    end
     add_index :project_users, ["project_id","user_id"]
  end
end
