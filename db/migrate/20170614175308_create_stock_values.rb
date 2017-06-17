class CreateStockValues < ActiveRecord::Migration[5.0]
  def change
    create_table :stock_values do |t|
      t.string :ticker

      t.timestamps
    end
  end
end
