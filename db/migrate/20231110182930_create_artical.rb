class CreateArtical < ActiveRecord::Migration[6.0]
  def change
    create_table :articals do |t|
      t.string :title
      t.text :"description"
    end
  end
end
