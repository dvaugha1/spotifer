class CreateSongVotes < ActiveRecord::Migration
  def change
    create_table :song_votes do |t|

      t.timestamps null: false
    end
  end
end
