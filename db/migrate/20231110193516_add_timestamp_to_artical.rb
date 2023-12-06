class AddTimestampToArtical < ActiveRecord::Migration[6.0]
  def change
    add_column :articals, :created_at, :datatime
    add_column :articals, :updated_at, :datatime
  end
end
