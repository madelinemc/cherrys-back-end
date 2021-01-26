class Topping < ApplicationRecord
  belongs_to :topping_type
  belongs_to :order
end
