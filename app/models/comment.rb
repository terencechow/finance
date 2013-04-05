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

class Comment < ActiveRecord::Base
  attr_accessible :comment
  belongs_to :commentable, :polymorphic => true
  belongs_to :users
end
