puts '# Roles'
role_admin  = Role.create!(name: "admin",  description: "Administrator", value: "Administrator")
role_editor = Role.create!(name: "editor", description: "Editor",        value: "Editor")
role_client = Role.create!(name: "client", description: "Client",        value: "Client")

puts '#'

admin_user = User.create!(name: 'admin', email: 'admin@admin.com', password: '12345678')
admin_user.roles << role_admin

puts '# States and Cities'
load 'db/states_cities.rb'