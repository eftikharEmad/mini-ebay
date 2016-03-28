json.array!(@catigories) do |catigory|
  json.extract! catigory, :id, :category_id, :category_name, :sub_category_id, :item_id
  json.url catigory_url(catigory, format: :json)
end
