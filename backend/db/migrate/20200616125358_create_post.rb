class CreatePost < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :titulo
      t.integer :numero_salvos
      t.integer :usuario_id
    end
  end
end
