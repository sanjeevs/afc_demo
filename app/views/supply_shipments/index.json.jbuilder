json.array!(@supply_shipments) do |supply_shipment|
  json.extract! supply_shipment, :id, :rcvd, :return, :supply_id, :supplier_id, :ship_date
  json.url supply_shipment_url(supply_shipment, format: :json)
end
