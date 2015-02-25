class Suggestions < ActiveRecord::Migration
  def change
    create_table :suggestions do |t|
      t.integer :user_id
      t.string :artist
      t.string :album
      t.string :title
      t.string :spotify_id, :unique => true
      t.datetime :created_at,  null: false
      t.datetime :updated_at,  null: false
    end
  end
end
