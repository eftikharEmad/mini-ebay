json.array!(@items) do |item|
  json.extract! item, :id, :item_id, :item_name, :item_color, :item_size, :item_preice, :category_id
  json.url item_url(item, format: :json)
end
