# == Schema Information
#
# Table name: asset_histories
#
#  id             :integer          not null, primary key
#  symbol         :string(255)
#  valuation_date :date
#  open           :decimal(, )
#  high           :decimal(, )
#  low            :decimal(, )
#  close          :decimal(, )
#  volume         :decimal(, )
#  adjusted_close :decimal(, )
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

class AssetHistory < ActiveRecord::Base
  attr_accessible :adjusted_close, :close, :high, :low, :open, :symbol, :valuation_date, :volume
  has_many :assets, :through =>:asset_informations
end
