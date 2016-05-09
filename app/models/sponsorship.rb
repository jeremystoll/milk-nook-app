class Sponsorship < ActiveRecord::Base
  belongs_to :offer
  belongs_to :request
end
