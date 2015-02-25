class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :songs, :albums, :album
  end
end
