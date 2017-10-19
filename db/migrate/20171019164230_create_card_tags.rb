class CreateCardTags < ActiveRecord::Migration[5.1]
  def change
    create_table :card_tags do |t|
      t.integer :card_id, index: true
      t.integer :tag_id, index: true
      t.timestamps
    end
  end
end
