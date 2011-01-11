class Orderline < ActiveRecord::Base
  belongs_to :orderinfo
  belongs_to :product
end
