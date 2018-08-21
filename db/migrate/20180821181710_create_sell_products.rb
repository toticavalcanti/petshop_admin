class CreateSellProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :sell_products do |t|
      t.references :product, foreign_key: true
      t.references :sell, foreign_key: true

      t.timestamps
    end
  end
end
