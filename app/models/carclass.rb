class Carclass < ApplicationRecord
	has_many :cars

	validates :name, length: {maximum: 100}
	validates :name, presence: true 
end
