class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :rut
      t.string :nombres
      t.string :apellidos
      t.string :estado

      t.timestamps
    end
  end
end
