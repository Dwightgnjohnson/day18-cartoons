class AddPriceOfDvDs < ActiveRecord::Migration
  def change
    add_column :cartoons, :dvd_price, :integer
  end
end
