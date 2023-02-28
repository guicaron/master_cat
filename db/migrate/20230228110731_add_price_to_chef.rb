class AddPriceToChef < ActiveRecord::Migration[7.0]
  def change
    add_column :chefs, :price, :integer
  end
end
