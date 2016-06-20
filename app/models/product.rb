class Product < ActiveRecord::Base

	## RELATIONSHIPS
	belongs_to :category
	has_many :likes

	## VALIDATIONS
	validates :category_id, presence: true

	## SCOPE
	scope :published, -> { where(status: true) }
	scope :unpublished, -> { where(status: false) }

	## PRICE_VIEW

	def price_view
		if price_promo.present?
			price_promo
		else
			price
		end
	end

end
















