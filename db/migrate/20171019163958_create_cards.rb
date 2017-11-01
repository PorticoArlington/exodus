class CreateCards < ActiveRecord::Migration[5.1]
  def change
    create_table :cards do |t|
      t.string :title
      t.string :type, index: true
      t.string :context, index: true
      t.string :subtitle
      t.string :image
      t.text :description
      t.text :embed
      t.string :internal_name
      t.boolean :bookmarkable
      t.datetime :display_start_datetime, index: true
      t.datetime :display_end_datetime, index: true
      t.string :published, index: true
      t.datetime :start_datetime, index: true
      t.datetime :end_datetime, index: true
      t.string :location
      t.string :description
      t.timestamps
    end
  end
end
