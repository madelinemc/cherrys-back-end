class Order < ApplicationRecord
  belongs_to :customer
  
  has_many :scoops
  has_many :flavors, through: :scoops

  has_many :toppings
  has_many :topping_types, through: :toppings
end
