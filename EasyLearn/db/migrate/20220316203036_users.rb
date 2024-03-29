class Users < ActiveRecord::Migration[7.0]
  def change
    create_table :videos do |t|
      t.string :name, null: false
      t.string :description
      t.string :email, default: "", null: false
      t.string :password_digest, null: false
      t.string :avatar_profile
      t.bigint :preference_id

      t.timestamps
    end
  end
end
