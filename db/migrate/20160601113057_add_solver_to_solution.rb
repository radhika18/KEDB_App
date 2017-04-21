class AddSolverToSolution < ActiveRecord::Migration
  def change
    add_column :solutions, :solver, :string
  end
end
