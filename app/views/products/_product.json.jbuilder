json.extract! product, :id, :price, :quanity, :seller_id, :created_at, :updated_at
json.url product_url(product, format: :json)
