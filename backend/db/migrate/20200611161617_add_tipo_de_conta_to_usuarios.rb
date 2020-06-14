class AddTipoDeContaToUsuarios < ActiveRecord::Migration[6.0]
  def change
    add_column :Usuarios, :TipoDeConta, :string
  end
end
