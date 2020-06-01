class CreateEstudios < ActiveRecord::Migration[6.0]
  def change
    create_table :estudios do |t|
      t.string :Nome
      t.string :Email, unique: true
      t.string :CNPJ, unique: true
      t.string :Instagram, unique: true
      t.string :Facebook, unique: true
      t.string :CEP
      t.string :Estado
      t.string :Cidade
      t.string :Bairro
      t.string :Rua
      t.string :Numero
      t.string :Complemento
      t.string :Senha

    end
  end
end
