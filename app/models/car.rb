class Car < ApplicationRecord
  has_one :asset, as: :assetable
end
