json.array!(@supply_consumptions) do |supply_consumption|
  json.extract! supply_consumption, :id, :supply_id, :amount, :production_run_id
  json.url supply_consumption_url(supply_consumption, format: :json)
end
