class CreateSleeplogs < ActiveRecord::Migration
  def change
    create_table :sleeplogs do |t|
      t.integer :user_id, null: false
      t.date :date, null: false
      t.integer :hours, null: false
      t.string :quality
      t.text :notes
      t.time :in_bed_time
      t.time :fall_asleep_time
      t.time :wake_up_time
      t.integer :diary_id
      t.boolean :sleeping_pill
    end
  end
end
