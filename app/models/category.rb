class Category < ActiveRecord::Base

	## RELATIONSHIPS
	has_many :products


	## VALIDATIONS
	validates :name, presence: true
	validates :name, length: { minimum: 5, maximum: 25 }
end
