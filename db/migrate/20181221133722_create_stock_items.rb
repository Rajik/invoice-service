class CreateStockItems < ActiveRecord::Migration[5.1]
  def change
    create_table :stock_items do |t|
      t.string :name
      t.string :unit
      t.decimal :rate_of_duty
      t.decimal :opening_balance_quantity
      t.decimal :opening_balance_rate

      t.timestamps
    end
  end
end
