class ChangeDatatypeOnSolutionFromStringToText < ActiveRecord::Migration
  def up
    change_column :solutions, :solution, :text, :limit => nil
  end

  def down
    change_column :solutions, :solution, :string
  end
end
