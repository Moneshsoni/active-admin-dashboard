class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.string :name
      t.string :address
      t.string :company
      t.string :phone_number

      t.timestamps
    end
  end
end
