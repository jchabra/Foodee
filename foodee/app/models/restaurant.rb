# == Schema Information
#
# Table name: restaurants
#
#  id      :integer          not null, primary key
#  name    :string(255)
#  cuisine :string(255)
#  address :text
#

class Restaurant < ActiveRecord::Base
  has_many :dishes
  validates :name, :length => { :minimum => 4 }
  validates :cuisine, :presence => true
  validates :address, :presence => true
end
