class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.string :title
      t.string :bug_type
      t.string :status
      t.datetime :deadline
      t.string :description

      t.timestamps null: false
    end
  end
end
