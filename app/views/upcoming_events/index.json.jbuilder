json.array!(@upcoming_events) do |upcoming_event|
  json.extract! upcoming_event, :id, :title, :description, :location, :event_time, :img_url
  json.url upcoming_event_url(upcoming_event, format: :json)
end
