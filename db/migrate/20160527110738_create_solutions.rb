class CreateSolutions < ActiveRecord::Migration
  def change
    create_table :solutions do |t|
      t.string :description
      t.string :error
      t.string :solution

      t.timestamps
    end
  end
end
