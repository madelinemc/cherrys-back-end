class ToppingType < ApplicationRecord
    has_many :toppings
    has_many :orders, through: :toppings
end
