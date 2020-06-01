class CreateUsuarios < ActiveRecord::Migration[6.0]
  def change
    create_table :usuarios do |t|
      t.string :Nome
      t.string :Email, unique: true
      t.string :CPF, unique: true
      t.string :NomeDeUsuario, unique: true
      t.string :Senha

    end
  end
end
