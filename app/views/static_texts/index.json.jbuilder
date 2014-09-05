json.array!(@static_texts) do |static_text|
  json.extract! static_text, :id, :title, :body, :active
  json.url static_text_url(static_text, format: :json)
end
