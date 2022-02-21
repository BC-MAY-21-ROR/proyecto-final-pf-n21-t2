class ChangePreferenceToUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :preference_id
  end
end
