# == Schema Information
#
# Table name: dishes
#
#  id    :integer          not null, primary key
#  name  :string(255)
#  cost  :decimal(, )
#  photo :string(255)
#

class Dish < ActiveRecord::Base
  belongs_to :restaurant
  validates :name, :presence => true
  validates :cost, :numericality => { :greater_than => 10 }
  validates :photo, :presence => true
end