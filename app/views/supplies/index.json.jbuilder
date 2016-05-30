json.array!(@supplies) do |supply|
  json.extract! supply, :id, :name, :amount, :unit, :adjust
  json.url supply_url(supply, format: :json)
end
