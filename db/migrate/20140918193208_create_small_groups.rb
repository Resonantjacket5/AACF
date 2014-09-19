class CreateSmallGroups < ActiveRecord::Migration
  def change
    create_table :small_groups do |t|
      t.text :leaders
      t.text :img_url
      t.text :location
      t.text :weekday
      t.time :event_time
      t.text :topic
      t.text :contact
      t.text :leaders_note_1
      t.boolean :leaders_note_1_active
      t.text :leaders_note_2
      t.boolean :leaders_note_2_active
      t.text :leaders_note_3
      t.boolean :leaders_note_3_active
      t.boolean :disabled

      t.timestamps
    end
  end
end
