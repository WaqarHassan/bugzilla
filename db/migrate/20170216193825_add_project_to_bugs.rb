class AddProjectToBugs < ActiveRecord::Migration
  def change
    add_reference :bugs, :project, index: true, foreign_key: true
  end
end
