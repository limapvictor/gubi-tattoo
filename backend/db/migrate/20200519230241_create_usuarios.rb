class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :Nome
      t.string :Email, unique: true
      t.string :CPF, unique: true
      t.string :NomeDeUsuario, unique: true
      t.string :password_digest
      t.string :TipoDeConta
      t.string :Foto
      t.text   :Sobre
      t.string :Celular, unique: true
      t.string :Instagram, unique: true
      t.integer :NumeroDeSeguidores
    end
  end
end
