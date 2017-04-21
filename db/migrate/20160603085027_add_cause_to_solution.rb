class AddCauseToSolution < ActiveRecord::Migration
  def change
    add_column :solutions, :cause, :string
  end
end
