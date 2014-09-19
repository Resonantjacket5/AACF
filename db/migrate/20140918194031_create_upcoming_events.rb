class CreateUpcomingEvents < ActiveRecord::Migration
  def change
    create_table :upcoming_events do |t|
      t.text :title
      t.text :description
      t.text :location
      t.datetime :event_time
      t.text :img_url

      t.timestamps
    end
  end
end
