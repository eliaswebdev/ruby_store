class Category < ActiveRecord::Base
	validates :name, presence: true
	validates :name, length: { minimum: 5, maximum: 25 }
end
