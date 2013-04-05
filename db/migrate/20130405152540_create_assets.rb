class CreateAssets < ActiveRecord::Migration
  def change
    create_table :assets do |t|
      t.string :symbol
      t.decimal :cost
      t.decimal :quantity
      t.date :most_recent_date

      t.timestamps
    end
  end
end
