class AddTimestampsToPosts < ActiveRecord::Migration[6.0]
  def change
    add_timestamps :posts, null: true

    time = DateTime.new(1910, 9, 1)
    Post.update_all(created_at: time, updated_at: time)

    change_column_null :posts, :created_at, false
    change_column_null :posts, :updated_at, false
  end
end
