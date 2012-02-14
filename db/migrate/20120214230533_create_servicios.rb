class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :codigo
      t.string :descripcion

      t.timestamps
    end
  end
end
