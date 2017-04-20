class CreatePolitics < ActiveRecord::Migration[5.0]
  def change
    create_table :politics do |t|
      t.string :topic
      t.string :full_text
      t.integer :retweet_count

      t.timestamps
    end
  end
end
