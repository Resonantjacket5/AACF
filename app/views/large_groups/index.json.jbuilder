json.array!(@large_groups) do |large_group|
  json.extract! large_group, :id, :weekday, :location, :description, :event_time, :img_url
  json.url large_group_url(large_group, format: :json)
end
