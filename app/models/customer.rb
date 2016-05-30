class Customer < ActiveRecord::Base
  has_many :product_shipments, dependent: :destroy
end
