class Flavor < ApplicationRecord
    has_many :scoops
    has_many :orders, through: :scoops
end
