class ProductionRun < ActiveRecord::Base
  belongs_to :producer
  belongs_to :product
  has_many :supply_consumptions
end
