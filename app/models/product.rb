class Product < ActiveRecord::Base

	## RELATIONSHIPS
	belongs_to :category
	has_many :likes

	## VALIDATIONS
	validates :category_id, presence: true
end
