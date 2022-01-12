class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.references :store, null: false, foreign_key: true
      t.string :code
      t.string :ean
      t.string :name
      t.integer :quantity
      t.string :description
      t.string :unity
      t.string :category

      t.timestamps
    end
  end
end
