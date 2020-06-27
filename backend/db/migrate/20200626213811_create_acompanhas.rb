class CreateAcompanhas < ActiveRecord::Migration[6.0]
  def change
    create_table :acompanhas do |t|
      t.integer :acompanha_id
      t.integer :acompanhado_id

      t.timestamps
    end
  end
end
