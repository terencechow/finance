class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :symbol
      t.string :action
      t.decimal :quantity
      t.date :transact_date
      t.decimal :price

      t.timestamps
    end
  end
end
