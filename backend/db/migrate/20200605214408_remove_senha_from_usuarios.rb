class RemoveSenhaFromUsuarios < ActiveRecord::Migration[6.0]
  def change
    remove_column :usuarios, :Senha, :string
  end
end
