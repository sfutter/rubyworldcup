#!/usr/bin/env ruby
class WorldCupApp
	VERSION = '0.0.0'
	def initialize
		puts 'Welcome to the world cup app'
		@groupA = Group.new('A')
		@groupB = Group.new('B')
		# binding.pry
		@groupC = Group.new('C')

	end
end


class Group
	def initialize(name)
		@name = name
		puts @name
		@teams = []
	end

	def add(team) 
		@teams.append(team)
	end

end

class Team
	def initialize
		puts 'team'
	end
end






myWorldCupApp = WorldCupApp.new
