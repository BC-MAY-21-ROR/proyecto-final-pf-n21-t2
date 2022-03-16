class DropTables < ActiveRecord::Migration[7.0]
  def change
    drop_table :preferences
    drop_table :events
    drop_table :videos
    drop_table :categories
    drop_table :users
  end
end
