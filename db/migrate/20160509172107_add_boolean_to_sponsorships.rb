class AddBooleanToSponsorships < ActiveRecord::Migration
  def change
    add_column :sponsorships, :accepted, :boolean, default: false, null: false
  end
end
