class CreatePrestamos < ActiveRecord::Migration[6.1]
  def change
    create_table :prestamos do |t|
      t.date :fecha
      t.boolean :estado
      t.references :Usuario, null: false, foreign_key: true

      t.timestamps
    end
  end
end
