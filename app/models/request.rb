class Request < ActiveRecord::Base
  belongs_to :user
  has_many :sponsorships
  has_many :offers, through: :sponsorships
end
