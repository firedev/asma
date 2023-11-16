ActiveRecord::Base.transaction do
  car = FactoryBot.create(:car)
  Asset.create!(assetable: car, car: car)
end
puts Car.count
