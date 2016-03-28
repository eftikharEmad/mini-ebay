json.array!(@item_carts) do |item_cart|
  json.extract! item_cart, :id, :item_id, :cart_id
  json.url item_cart_url(item_cart, format: :json)
end
