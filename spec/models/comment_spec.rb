# == Schema Information
#
# Table name: comments
#
#  id               :integer          not null, primary key
#  comment          :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#  user_id          :integer
#  commentable_id   :integer
#  commentable_type :string(255)
#

require 'spec_helper'

describe Comment do
  pending "add some examples to (or delete) #{__FILE__}"
end
