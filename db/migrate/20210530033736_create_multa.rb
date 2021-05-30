class CreateMulta < ActiveRecord::Migration[6.1]
  def change
    create_table :multa do |t|
      t.integer :valor
      t.date :fecha
      t.boolean :estado
      t.references :Prestamo, null: false, foreign_key: true

      t.timestamps
    end
  end
end
