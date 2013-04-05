# == Schema Information
#
# Table name: portfolios
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#

require 'spec_helper'

describe Portfolio do
  pending "add some examples to (or delete) #{__FILE__}"
end
