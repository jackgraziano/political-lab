class CreateMentions < ActiveRecord::Migration[5.0]
  def change
    create_table :mentions do |t|
      t.string :topic
      t.integer :count
      t.date :date

      t.timestamps
    end
  end
end
