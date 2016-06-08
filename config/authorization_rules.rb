authorization do
	role :admin do 
		has_permission_on [:admin_categories], :to => [:manage, :ativar, :desativar, :change_status]
		has_permission_on [:admin_products], :to => [:manage]
		has_permission_on [:admin_users], :to => [:manage]
	end

	role :editor do
		has_permission_on [:admin_categories], :to => [:manage]
		has_permission_on [:admin_products], :to => [:manage]
	end

	role :client do
		has_permission_on [:admin_categories], :to => [:index]
		has_permission_on [:admin_products], :to => [:index]
		has_permission_on [:admin_users], :to => [:index]
	end
end

privileges do
    privilege :manage, :includes => [:index, :show, :new, :create, :edit, :update, :destroy]
    privilege :read,   :includes => [:index, :show]
    privilege :create, :includes => [:new]
    privilege :update, :includes => [:edit]
    privilege :delete, :includes => [:destroy]
end