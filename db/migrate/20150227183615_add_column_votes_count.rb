class AddColumnVotesCount < ActiveRecord::Migration
  def change
    add_column :users, :vote_count, :integer
    add_column :users, :veto_count, :integer
  end
end
