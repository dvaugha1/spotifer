class DefaultNumberToVotes < ActiveRecord::Migration
  def change
    change_column_default :users, :vote_count, 5
    change_column_default :users, :veto_count, 5
  end
end
