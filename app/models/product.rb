class Product < ActiveRecord::Base

	validates :category_id, presence: true
end
