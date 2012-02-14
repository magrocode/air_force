class CreateProfesors < ActiveRecord::Migration
  def change
    create_table :profesors do |t|
      t.string :rut
      t.string :nombres
      t.string :apellido_paterno
      t.string :apellido_materno
      t.string :email

      t.timestamps
    end
  end
end
