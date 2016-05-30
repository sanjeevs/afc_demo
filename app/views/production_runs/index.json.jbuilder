json.array!(@production_runs) do |production_run|
  json.extract! production_run, :id, :producer_id, :product_id, :amount, :mfgd_date, :expiry_date, :lot_id
  json.url production_run_url(production_run, format: :json)
end
