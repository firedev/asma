class Asset < ApplicationRecord
  belongs_to :house
  belongs_to :car
end
