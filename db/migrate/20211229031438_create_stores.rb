class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.string :cnpj
      t.string :address
      t.string :phone

      t.timestamps
    end
  end
end
