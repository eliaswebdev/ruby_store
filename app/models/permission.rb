class Permission < ActiveRecord::Base
	## RELATIONSHIPS
	belongs_to :role
	belongs_to :user
end
