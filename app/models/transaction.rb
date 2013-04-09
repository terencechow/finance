# == Schema Information
#
# Table name: transactions
#
#  id            :integer          not null, primary key
#  symbol        :string(255)
#  action        :string(255)
#  quantity      :decimal(, )
#  transact_date :date
#  price         :decimal(, )
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  portfolio_id  :integer
#

class Transaction < ActiveRecord::Base
  attr_accessible :action, :price, :quantity, :symbol, :transact_date
  belongs_to :portfolio
end
