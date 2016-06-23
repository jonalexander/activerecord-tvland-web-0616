# == Schema Information
#
# Table name: characters
#
#  id          :integer          not null, primary key
#  name        :string
#  show_id     :integer
#  actor_id    :integer
#  catchphrase :string
#

class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say
    "#{self.name} always says: #{self.catchphrase}"
  end

end
