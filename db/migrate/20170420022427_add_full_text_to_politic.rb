class AddFullTextToPolitic < ActiveRecord::Migration[5.0]
  def change
    add_column :politics, :full_text, :text
  end
end
