#!/usr/bin/env ruby

require 'json'

class WorldCupApp
  VERSION = '0.0.0'
  
  def initialize
    puts @curr_filepath

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

  
  def load_teams(teams_data_str)
    puts teams_data_str
    teams_data = JSON.parse(teams_data_str)

    teams = []
    
    for team in teams_data
      team_name = team['name']
      teams << Team.new(team_name)
    end

    puts teams 
  end

  def get_data_from_file(data_file)
    f_path = File.join(__dir__, data_file)
    data = ""
    begin
      File.open(f_path, "r") do |f|
        f.each_line do |line|
          data += line
        end
      end
    rescue
      puts "file " + data_file + " does not exist"
    ensure
      return data
    end
  end

end


class Team
  def initialize(name)
    @name = name
  end

  def to_s
    return "<TEAM name=" + @name + ">"
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
data = myWorldCupApp.get_data_from_file("data.txt")
myWorldCupApp.load_teams(data)

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



