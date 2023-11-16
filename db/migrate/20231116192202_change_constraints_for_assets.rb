class ChangeConstraintsForAssets < ActiveRecord::Migration[7.1]
  def change
    change_column_null :assets, :house_id, true
    change_column_null :assets, :car_id, true
  end
end
