#!/usr/bin/env ruby
class WorldCupApp
	VERSION = '0.0.0'
	def initialize
		puts 'Welcome to the world cup app'
		@groupA = Group.new('A')
		@groupB = Group.new('B')
		@groupC = Group.new('C')

		@player1 = @groupA.add('team1')

	
	end
end


class Group
	def initialize(group_name)
		@group_name = group_name
		puts 'Group ' + @group_name
		@teams = []
	end

	def add(team) 
		@teams.append(team)
	end

end


class Team
	def initialize
		@player = player
		puts @player
		@players = []
	end

	def add(player)
		@players.append(player)
	end
	
end


class Players
	def initialize
		puts 'player'
	end
end

myWorldCupApp = WorldCupApp.new




