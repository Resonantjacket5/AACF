class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.text :name
      t.text :location
      t.text :event_type
      t.datetime :event_date

      t.timestamps
    end
  end
end
