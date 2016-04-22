class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string "uid", null: false
      t.string "profile_link"
      t.string "photo_url"
      t.string "name"
      t.string "location"
      t.string "birthday"
      t.string "provider", null: false

      t.timestamps null: false
    end
  end
end
