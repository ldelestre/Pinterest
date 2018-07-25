# Création de la table Pins dans la database

class CreatePins < ActiveRecord::Migration[5.2]
	def change
		create_table :pins do |t|
			t.string :url
			t.integer :user_id
			t.timestamps
		end
	end
end