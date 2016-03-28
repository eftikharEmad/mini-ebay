json.array!(@carts) do |cart|
  json.extract! cart, :id, :cart_id, :paid, :unpaid, :total_price, :user_id
  json.url cart_url(cart, format: :json)
end
