# == Schema Information
#
# Table name: shows
#
#  id         :integer          not null, primary key
#  name       :string
#  network_id :integer
#  genre      :string
#  day        :string
#  season     :string
#

class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network 
end
