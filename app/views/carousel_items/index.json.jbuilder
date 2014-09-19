json.array!(@carousel_items) do |carousel_item|
  json.extract! carousel_item, :id, :img_url, :disable
  json.url carousel_item_url(carousel_item, format: :json)
end
