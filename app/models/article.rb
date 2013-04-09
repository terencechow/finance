# == Schema Information
#
# Table name: articles
#
#  id         :integer          not null, primary key
#  title      :string(255)
#  article    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Article < ActiveRecord::Base
  attr_accessible :article, :title
  belongs_to :user
  has_many :comments, :as => :commentable
  has_many :pictures
  has_many :assets
end
