class CreateSegues < ActiveRecord::Migration[6.0]
  def change
    create_table :segues do |t|
      t.references :usuario, null: false, foreign_key: true
      t.references :post, null: false, foreign_key: true

      t.timestamps
    end
  end
end
