class Offer < ActiveRecord::Base
  belongs_to :user
  has_many :sponsorships
  has_many :requests, through: :sponsorships
end
