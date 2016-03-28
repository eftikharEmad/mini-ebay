json.array!(@invocies) do |invocy|
  json.extract! invocy, :id, :cart_id, :invocice_id, :total_price
  json.url invocy_url(invocy, format: :json)
end
