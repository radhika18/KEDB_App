class ChangeDatetimeInSoution < ActiveRecord::Migration
  def up
    change_column :solutions, :logged_date, :date
  end

  def down
    change_column :solutions, :logged_date, :datetime
  end
end
