class CreateTatuadors < ActiveRecord::Migration[6.0]
  def change
    create_table :tatuadors do |t|
      t.string :Nome
      t.string :Email, unique: true
      t.string :CPF, unique: true
      t.integer :NumeroDeSeguidores
      t.string :Instagram, unique: true
      t.string :Celular, unique: true
      t.string :Senha
      t.text :Sobre
      t.string :Foto

      t.timestamps
    end
  end
end
