class CreateLargeGroups < ActiveRecord::Migration
  def change
    create_table :large_groups do |t|
      t.text :weekday
      t.text :location
      t.text :description
      t.time :event_time
      t.text :img_url

      t.timestamps
    end
  end
end
