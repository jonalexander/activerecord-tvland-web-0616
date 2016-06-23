# == Schema Information
#
# Table name: characters
#
#  id      :integer          not null, primary key
#  name    :string
#  show_id :integer
#

class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show
end
