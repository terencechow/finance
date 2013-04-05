class CreateAssetInformations < ActiveRecord::Migration
  def change
    create_table :asset_informations do |t|
      t.string :symbol
      t.string :name
      t.string :sector

      t.timestamps
    end
  end
end
