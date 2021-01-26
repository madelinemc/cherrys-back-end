class Scoop < ApplicationRecord
  belongs_to :order
  belongs_to :flavor
end
