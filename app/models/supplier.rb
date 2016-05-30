class Supplier < ActiveRecord::Base
  has_many :supply_shipments, dependent: :destroy
end
