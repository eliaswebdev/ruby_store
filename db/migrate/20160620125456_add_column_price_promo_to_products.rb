class AddColumnPricePromoToProducts < ActiveRecord::Migration
  def change
    add_column :products, :price_promo, :float
  end
end
