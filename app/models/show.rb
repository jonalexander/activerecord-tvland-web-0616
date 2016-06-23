# == Schema Information
#
# Table name: shows
#
#  id         :integer          not null, primary key
#  name       :string
#  network_id :integer
#

class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
end
