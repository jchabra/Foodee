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
  validates :name, :length => { :minimum => 4 }
  validates :cuisine, :presence => true
  validates :addres, :presence => true
end
