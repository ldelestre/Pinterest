# ActiveRecords associations
# Les commentaires appartiennent aux users et aux pins
# Les commentaires ont plusieurs pins

class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :pin
	
	has_many :pin
end