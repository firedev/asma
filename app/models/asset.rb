class Asset < ApplicationRecord
  belongs_to :house, optional: true
  belongs_to :car, optional: true

  validate :must_belong_to_assetable

  belongs_to :assetable, polymorphic: true

  private

  def must_belong_to_assetable
    if house.nil? == car.nil?
      errors.add(:base, 'Asset must be associated with assetable')
    end
  end
end
