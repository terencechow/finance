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

class Portfolio < ActiveRecord::Base
  attr_accessible :description, :name, :assets_attributes
  
  validates :name, presence: true

  belongs_to :user
  has_many :assets, :dependent => :destroy
  has_many :comments, :as => :commentable
  has_many :transactions

  accepts_nested_attributes_for :assets, :reject_if => lambda {|a| a[:symbol].blank?}, :allow_destroy => true
  
end
