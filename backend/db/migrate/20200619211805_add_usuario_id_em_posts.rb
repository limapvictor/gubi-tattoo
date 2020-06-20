class AddUsuarioIdEmPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :usuario_id, :int
  end
end
