Active Record Basics
====================

# CRUD (CREATE - READ - UPDATE - DELETE)

* Dentro da pasta do projeto rode o comando:
> rails console 

## 1) (Create) Inclusão de registros dentro do banco dados através do Active Record
* Category.create(name: "MousePad Ruby")
	=> (0.4ms)  BEGIN
	=> SQL (0.4ms)  INSERT INTO `categories` (`name`, `created_at`, `updated_at`) VALUES ('MousePad Ruby', '2016-05-11 12:08:10', '2016-05-11 12:08:10')
	=> (0.7ms)  COMMIT

* boneta = Category.new
* boneta.class
	=> Category(id: integer, name: string, created_at: datetime, updated_at: datetime)

* boneta.name = "Boné Ruby on Rails Rules"
* boneta
	=> #<Category id: nil, name: "Boné Ruby on Rails Rules", created_at: nil, updated_at: nil>
* boneta.save
	=>    (0.4ms)  BEGIN
	=>   SQL (0.6ms)  INSERT INTO `categories` (`name`, `created_at`, `updated_at`) VALUES ('Boné Ruby on Rails Rules', '2016-05-11 12:12:50', '2016-05-11 12:12:50')
	=>    (56.5ms)  COMMIT
	=> true
* casacos = Category.create(:name => 'Casacos e Moletons')
* casacos.name
* casacos.class


## 2) (READ) Listagem dos meus registros do banco de dados através de objetos

```ruby
  categories = Category.all
  categories.size
  categories.each do |category|
	category.name
  end
  categories.map {|cat| [cat.name, cat.id]}
```

* Category.all
* Category.first
* Category.second # até Category.last
* Category.all[0]
* Category.all[1]
* Category.all[2]
* Category.all[-1] # igual a: Category.last

* find()
	* Category.find(1)
	* Category.find(2) # se não encontrar: ActiveRecord::RecordNotFound: Couldn't find Category with 'id'=2
	* Category.find(3)

* find_by()
	* Category.find_by(:name => 'Camiseta Ruby')
	* Category.find_by(:name => 'Camiseta Rubys', id: 1) # registros duplicados:
	* Category.find_by(name: 'Camisetas') # sempre pega o primeiro que achar

* where()
	* Category.where(name: 'Camisetas') # trás um array todos os registros encontrados
	* Category.where(name: 'Camisetas').length
	  Category Load (0.6ms)  SELECT `categories`.* FROM `categories` WHERE `categories`.`name` = 'Camisetas'
	=> 2
	* Category.where(name: 'Camisetas').count
	   (0.6ms)  SELECT COUNT(*) FROM `categories` WHERE `categories`.`name` = 'Camisetas'
	=> 2
	* Category.where(name: 'Camisetas').size
	   (0.6ms)  SELECT COUNT(*) FROM `categories` WHERE `categories`.`name` = 'Camisetas'
	=> 2
	* Category.where(name: 'Camisetas')
	* Category.where(name: 'Camisetas').size

* where.not()
	* Category.where.not(name: 'Camisetas')
	* Category.where.not(name: 'Camisetas').size		


* where com like
	* Category.where("name LIKE 'C%' ")
	* Category.where("name LIKE 'C%' ").size
	* Category.where.not("name LIKE 'C%' ")
	* Category.where.not("name LIKE 'C%' ").size





