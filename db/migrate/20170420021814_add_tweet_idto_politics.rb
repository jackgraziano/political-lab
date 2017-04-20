class AddTweetIdtoPolitics < ActiveRecord::Migration[5.0]
  def change
    add_column :politics, :tweet_id, :string
  end
end
