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

require 'spec_helper'

describe Transaction do
  pending "add some examples to (or delete) #{__FILE__}"
end
