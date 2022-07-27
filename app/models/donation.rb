class Donation < ActiveRecord::Base
    belongs_to :organization
    belongs_to :donor
end