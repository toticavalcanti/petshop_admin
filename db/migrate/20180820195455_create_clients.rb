class CreateClients < ActiveRecord::Migration[5.0]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :email
      t.text :observations
      t.string :phone

      t.timestamps
    end
  end
end
