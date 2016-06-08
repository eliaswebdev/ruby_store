# Roles
puts '# Roles'
role_admin  = Role.create!(name: "admin",  description: "Administrator", value: "Administrator")
role_editor = Role.create!(name: "editor", description: "Editor",        value: "Editor")
role_client = Role.create!(name: "client", description: "Client",        value: "Client")
