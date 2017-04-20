class RemoveFullTextFromPolitic < ActiveRecord::Migration[5.0]
  def change
    remove_column :politics, :full_text
  end
end
