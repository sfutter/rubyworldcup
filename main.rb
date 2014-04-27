#!/usr/bin/env ruby
class WorldCupApp
	VERSION = '0.0.0'
	
	def initialize
		#create group instances
		@groupA = Group.new('A')
		@groupB = Group.new('B')
		@groupC = Group.new('C')
		@groupD = Group.new('D')

		#add teams to groups
		@groupA.add('Team1')
		@groupA.add('Team2')
		@groupB.add('Team3')
		@groupB.add('Team4')


		#print out the Groups and their team
		@groupA.description_of_group('team123', 'teamslfjlkj')
		
		#puts 'Group B: ' + @groupB.description_of_group


	end

end


class Group
	def initialize(group)
		@group = group
		puts 'Group ' + @group
		@teams = []
	end

	def add(team) 
		@teams << team
		puts team + ' added to Group ' + @group
	end

	def description_of_group(*teams)
	 	puts teams
	end


end

myWorldCupApp = WorldCupApp.new


#what i want to do 

# GroupA = Team 1, Team 2, Team 3, Team 4
# Team1 = W W W L D
# Team2 = W W L D D 


# 1) Create an interactive World Cup app to help predict the winner
# 2) Enter two Countries into the app. It will predict the score.
# 3) score prediction based off :
   # a) form in LAST 3 months?/ 3 games   
   # b) Top goal scorers?
   # c) injuries? 
   # d) Goals for and against club in the last three games?

# 1) create group first 
# 2) create teams in the group
# 3) create players in the teams
# 4) create table with team's history. E.g. 
#  Team, won Country X 3-1, 
#        drew Coutry Y 2-2,
# #        etc.



