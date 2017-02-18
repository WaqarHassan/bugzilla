class AddSolvedByToBug < ActiveRecord::Migration
  def change
    add_column :bugs, :solved_by, :integer
  end
end
