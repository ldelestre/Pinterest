# ActiveRecords associations
# Les pins appartiennent aux users

class Pin < ApplicationRecord
	belongs_to :user
end