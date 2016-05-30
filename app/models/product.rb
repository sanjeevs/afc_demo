class Product < ActiveRecord::Base
  has_many :production_runs, dependent: :destroy
  has_many :product_shipments, dependent: :destroy

end
