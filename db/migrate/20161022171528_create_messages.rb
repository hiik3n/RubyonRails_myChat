class CreateMessages < ActiveRecord::Migration[5.0]
  def change
    create_table :messages do |t|
      t.string :title
      t.text :body
      t.integer :recipient_id
      t.integer :sender_id

      t.timestamps
    end
  end
end
