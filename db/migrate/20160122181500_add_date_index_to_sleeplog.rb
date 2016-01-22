class AddDateIndexToSleeplog < ActiveRecord::Migration
  def change
    add_index :sleeplogs, :date, unique: true
  end
end
