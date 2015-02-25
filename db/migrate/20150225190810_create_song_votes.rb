class CreateSongVotes < ActiveRecord::Migration
  def change
    create_table :song_votes do |t|
      t.integer :user_id
      t.integer :song_id
      t.timestamps null: false
    end
  end
end
