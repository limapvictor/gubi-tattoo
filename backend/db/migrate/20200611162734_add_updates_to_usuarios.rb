class AddUpdatesToUsuarios < ActiveRecord::Migration[6.0]
  def change

    add_column :Usuarios, :Foto, :string
    add_column :Usuarios, :Sobre, :text
    add_column :Usuarios, :Celular, :string, unique: true
    add_column :Usuarios, :Instagram, :string, unique: true
    add_column :Usuarios, :NumeroDeSeguidores, :integer

  end
end
