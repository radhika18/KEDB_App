class AddProblemnoToSolution < ActiveRecord::Migration
  def change
    add_column :solutions, :Problemno, :integer
  end
end
