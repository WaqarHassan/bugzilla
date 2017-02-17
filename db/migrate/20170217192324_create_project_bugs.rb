class CreateProjectBugs < ActiveRecord::Migration
  def change
    create_table :project_bugs do |t|
      t.references :project
      t.references :bug
      t.timestamps null: false
    end
    add_index :project_bugs, ["project_id","bug_id"]
  end
end
