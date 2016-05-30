class SupplyShipment < ActiveRecord::Base
  belongs_to :supply
  belongs_to :supplier
end
