class Player < ActiveRecord::Base
	validates_presence_of :first_name
	validates_presence_of :last_name
	validates_presence_of :number
	validates_presence_of :team
	validates_presence_of :birthday
	validates_presence_of :position
	validates_presence_of :experience
end
