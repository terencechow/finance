# == Schema Information
#
# Table name: assets
#
#  id               :integer          not null, primary key
#  symbol           :string(255)
#  cost             :decimal(, )
#  quantity         :decimal(, )
#  most_recent_date :date
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  portfolio_id     :integer
#

class Asset < ActiveRecord::Base
  attr_accessible :cost, :most_recent_date, :quantity, :symbol
  belong_to :portfolios
  has_many :asset_histories, :through => :asset_informations
end
