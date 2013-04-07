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

require 'spec_helper'

describe Asset do
  pending "add some examples to (or delete) #{__FILE__}"
end
