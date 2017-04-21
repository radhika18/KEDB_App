class AddLoggeddateToSolution < ActiveRecord::Migration
  def change
    add_column :solutions, :logged_date, :datetime
  end
end
