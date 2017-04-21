class ChangeDatatypeOnScriptFromStringToText < ActiveRecord::Migration
  def up
    change_column :scripts, :procedure, :text, :limit => nil
  end

  def down
    change_column :scripts, :procedure, :string
  end
end
