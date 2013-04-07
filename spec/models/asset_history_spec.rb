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

require 'spec_helper'

describe AssetHistory do
  pending "add some examples to (or delete) #{__FILE__}"
end
