class CreateTatuagems < ActiveRecord::Migration[6.0]
  def change
    create_table :tatuagems do |t|
      t.string :Titulo
      t.string :Link, unique: true
      t.string :NumeroSalvos
      t.belongs_to :Tatuador
      t.belongs_to :Estudio
    end
  end
end
