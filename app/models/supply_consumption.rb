class SupplyConsumption < ActiveRecord::Base
  belongs_to :supply
  belongs_to :production_run
end
