def t(&block)
  ActiveRecord::Base.transaction do
    yield
  end
end

t {
  car = FactoryBot.create(:car)
  asset = Asset.create!(assetable: car, car: car)
  Transaction.create!(asset: asset)
}

puts "Assets: #{Asset.count}"
puts "Cars: #{Car.count}"
puts "Transactions: #{Transaction.count}"
