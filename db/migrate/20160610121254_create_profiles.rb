class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.belongs_to :city, index: true, foreign_key: true
      t.belongs_to :user, index: true, foreign_key: true
      t.string :fullname
      t.string :cpf
      t.string :rg
      t.date :date_of_birth

      t.timestamps null: false
    end
  end
end
