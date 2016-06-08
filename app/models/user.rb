class User < ActiveRecord::Base
	# Include default devise modules. Others available are:
	# :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable

	# RELATIONSHIPS
	has_many :permissions
	has_many :roles, :through => :permissions


  	# DECLARATIVE AUTHORIZATION
	def role_symbols
		(roles || []).map{|r| r.name.underscore.to_sym}
	end	
end
