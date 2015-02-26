class AddVotesToSuggestions < ActiveRecord::Migration
  def change
    add_column :suggestions, :votes, :string
    add_column :suggestions, :vetoes, :string
  end
end
