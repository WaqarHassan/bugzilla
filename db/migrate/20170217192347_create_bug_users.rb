class CreateBugUsers < ActiveRecord::Migration
  def change
    create_table :bug_users do |t|
      t.references :bug
      t.references :user
      t.timestamps null: false
    end
    add_index :bug_users, ["bug_id","user_id"]
  end
end
