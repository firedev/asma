class House < ApplicationRecord
  has_one :asset, as: :assetable
end
