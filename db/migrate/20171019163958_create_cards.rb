class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :subtitle
      t.string :image
      t.string :internal_name
      t.string :likeable
      t.timestamps
    end
  end
end
