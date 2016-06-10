class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
      t.belongs_to :state, index: true, foreign_key: true
      t.string :name
      t.boolean :capital

      t.timestamps null: false
    end
  end
end
