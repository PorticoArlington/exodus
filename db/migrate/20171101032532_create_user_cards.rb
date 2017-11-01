class CreateUserCards < ActiveRecord::Migration[5.1]
  def change
    create_table :user_cards do |t|
      t.integer :user_id, index: true
      t.integer :card_id, index: true
      t.boolean :bookmarked, index: true
      t.boolean :registered, index: true
      t.timestamps
    end
  end
end
