class CreateCaracteristicas < ActiveRecord::Migration[6.0]
  def change
    create_table :caracteristicas do |t|
      t.string :Descricao, unique: true
      t.boolean :Estilo

    end
  end
end
