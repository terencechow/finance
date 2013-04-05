# == Schema Information
#
# Table name: pictures
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  picture    :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  article_id :integer
#

class Picture < ActiveRecord::Base
  attr_accessible :name, :picture
  belongs_to :articles
end
