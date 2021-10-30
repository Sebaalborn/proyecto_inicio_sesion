class CreateNombreModelos < ActiveRecord::Migration[6.1]
  def change
    create_table :nombre_modelos do |t|
      t.string :campo1
      t.integer :campo2

      t.timestamps
    end
  end
end
