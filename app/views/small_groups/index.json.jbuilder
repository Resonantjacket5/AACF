json.array!(@small_groups) do |small_group|
  json.extract! small_group, :id, :leaders, :img_url, :location, :weekday, :event_time, :topic, :contact, :leaders_note_1, :leaders_note_1_active, :leaders_note_2, :leaders_note_2_active, :leaders_note_3, :leaders_note_3_active, :disabled
  json.url small_group_url(small_group, format: :json)
end
