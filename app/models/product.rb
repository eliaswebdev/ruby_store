class Product < ActiveRecord::Base

	## RELATIONSHIPS
	belongs_to :category

	## VALIDATIONS
	validates :category_id, presence: true
end
