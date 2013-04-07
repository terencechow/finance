class CreateAssetHistories < ActiveRecord::Migration
  def change
    create_table :asset_histories do |t|
      t.string :symbol
      t.date :valuation_date
      t.decimal :open
      t.decimal :high
      t.decimal :low
      t.decimal :close
      t.decimal :volume
      t.decimal :adjusted_close

      t.timestamps
    end
  end
end
