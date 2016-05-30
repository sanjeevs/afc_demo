json.array!(@product_shipments) do |product_shipment|
  json.extract! product_shipment, :id, :sent, :return, :product_id, :customer_id, :ship_date
  json.url product_shipment_url(product_shipment, format: :json)
end
