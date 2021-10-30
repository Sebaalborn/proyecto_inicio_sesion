class CreateUsuarios < ActiveRecord::Migration[6.1]
  def change
    create_table :usuarios do |t|
      t.string :first_name
      t.integer :last_name

      t.timestamps
    end
  end
end
