class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name, null:false
      t.string :description 
      t.string :email, null:false, default: ""
      t.string :password, null:false 
      t.string :avatar_profile
      t.bigint :preference_id, null:false 

      t.timestamps
    end
    add_index :users, [:email, :preference_id], unique: true
    add_foreign_key :users, :preferences, column: :preference_id
  end
end
