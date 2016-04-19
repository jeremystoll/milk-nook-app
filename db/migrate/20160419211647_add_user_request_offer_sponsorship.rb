class AddUserRequestOfferSponsorship < ActiveRecord::Migration
  def change
    create_table :users do |u|
      u.string :name
      u.string :location
      u.string :email
      u.string :password
      u.timestamps null: false
    end

    create_table :requests do |r|
      r.integer :user_id
      r.string :details
      r.timestamps null: false
    end

    create_table :offers do |o|
      o.integer :user_id
      o.string :details
      o.timestamps null: false
    end

    create_table :sponsorships do |s|
      s.integer :request_id
      s.integer :offer_id
      s.timestamps null: false
    end



  end
end
