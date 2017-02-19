class CreateBugs < ActiveRecord::Migration
  def change
    create_table :bugs do |t|
      t.references :project, foreign_key: true
      t.string :title
      t.integer :bug_type
      t.string :status
      t.date :deadline
      t.text :description

      t.timestamps null: false
    end
  end
end
