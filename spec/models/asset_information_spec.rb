# == Schema Information
#
# Table name: asset_informations
#
#  id               :integer          not null, primary key
#  symbol           :string(255)
#  name             :string(255)
#  sector           :string(255)
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  asset_id         :integer
#  asset_history_id :integer
#

require 'spec_helper'

describe AssetInformation do
  pending "add some examples to (or delete) #{__FILE__}"
end
