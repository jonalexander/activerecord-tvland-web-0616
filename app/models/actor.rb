# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#
require 'pry'
class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    self.characters.map do |character|
      "#{character.name} - #{character.show.name}"
    end
  end

  # ["Khaleesi - Game of Thrones"]

end
