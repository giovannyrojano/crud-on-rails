class CreateDetalles < ActiveRecord::Migration[6.1]
  def change
    create_table :detalles do |t|
      t.integer :cantidad
      t.references :Prestamo, null: false, foreign_key: true
      t.references :libro, null: false, foreign_key: true

      t.timestamps
    end
  end
end
