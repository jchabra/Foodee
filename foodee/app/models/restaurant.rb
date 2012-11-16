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
end
