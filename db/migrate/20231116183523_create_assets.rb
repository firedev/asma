class CreateAssets < ActiveRecord::Migration[7.1]
  def change
    create_table :assets do |t|
      t.references :house, null: false, foreign_key: true
      t.references :car, null: false, foreign_key: true
      t.timestamps
    end
  end
end
