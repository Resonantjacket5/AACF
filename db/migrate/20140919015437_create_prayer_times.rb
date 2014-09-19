class CreatePrayerTimes < ActiveRecord::Migration
  def change
    create_table :prayer_times do |t|
      t.text :location
      t.time :event_time
      t.text :weekday
      t.text :img_url
      t.boolean :image_active

      t.timestamps
    end
  end
end
