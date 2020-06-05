class AddPasswordDigestToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :Usuarios, :password_digest, :string
  end
end
