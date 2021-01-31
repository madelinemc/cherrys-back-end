class BaseType < ApplicationRecord
    has_many :bases
    has_many :orders, through: :bases
end
