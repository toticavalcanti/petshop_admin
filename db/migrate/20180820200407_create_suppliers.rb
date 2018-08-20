class CreateSuppliers < ActiveRecord::Migration[5.0]
  def change
    create_table :suppliers do |t|
      t.string :name
      t.text :observations
      t.string :email
      t.string :phone

      t.timestamps
    end
  end
end
