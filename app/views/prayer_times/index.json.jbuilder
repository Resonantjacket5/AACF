json.array!(@prayer_times) do |prayer_time|
  json.extract! prayer_time, :id, :location, :event_time, :weekday, :img_url, :image_active
  json.url prayer_time_url(prayer_time, format: :json)
end
