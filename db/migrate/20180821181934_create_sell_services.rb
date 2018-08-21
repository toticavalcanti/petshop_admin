class CreateSellServices < ActiveRecord::Migration[5.0]
  def change
    create_table :sell_services do |t|
      t.references :service, foreign_key: true
      t.references :sell, foreign_key: true

      t.timestamps
    end
  end
end
