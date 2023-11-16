class AddPolymorphicAssets < ActiveRecord::Migration[7.1]
  def change
    add_reference :assets, :assetable, polymorphic: true, null: false
  end
end
