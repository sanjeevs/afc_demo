class Producer < ActiveRecord::Base
  has_many :production_runs, dependent: :destroy
end
