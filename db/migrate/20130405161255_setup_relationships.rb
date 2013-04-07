class SetupRelationships < ActiveRecord::Migration
  def up
  	add_column :portfolios, :user_id, :integer
  	add_column :comments, :user_id, :integer
  	add_column :articles, :user_id, :integer
  	add_column :assets, :portfolio_id, :integer
  	add_column :transactions, :portfolio_id, :integer
  	add_column :pictures, :article_id, :integer
  	add_column :comments, :commentable_id, :integer
  	add_column :comments, :commentable_type, :string
  	add_column :asset_informations, :asset_id, :integer
  	add_column :asset_informations, :asset_history_id, :integer
  	add_index :asset_histories, :symbol
  	add_index :asset_informations, [:asset_id,:asset_history_id], unique: true
  end

  def down
  	remove_column :portfolios, :user_id
  	remove_column :comments, :user_id
  	remove_column :articles, :user_id
  	remove_column :assets, :portfolio_id
  	remove_column :transactions, :portfolio_id
  	remove_column :pictures, :article_id
  	remove_column :comments, :commentable_id
  	remove_column :comments, :commentable_type
  	remove_column :asset_informations, :asset_id
  	remove_column :asset_informations, :asset_history_id
  	remove_index :asset_histories, :symbol
  	remove_index :asset_informations, [:asset_id,:asset_history_id]
  end
end
