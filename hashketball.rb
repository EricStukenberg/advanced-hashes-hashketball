# Write your code here!


def game_hash()
  hash = {
        :home => { :team_name => "Brooklyn Nets", :colors => ["Black", "White"],
          :players => [
                               {:player_name => "Alan Anderson",
                                :number => 0,
                                :shoe => 16,
                                :points => 22,
                                :rebounds => 12,
                                :assists => 12,
                                :steals => 3,
                                :blocks => 1,
                                :slam_dunks => 1

            },
                               {:player_name => "Reggie Evans",
                                :number => 30,
                                :shoe => 14,
                                :points => 12,
                                :rebounds => 12,
                                :assists => 12,
                                :steals => 12,
                                :blocks => 12,
                                :slam_dunks => 7

            },
                               {:player_name => "Brook Lopez",
                                :number => 11,
                                :shoe => 17,
                                :points => 17,
                                :rebounds => 19,
                                :assists => 10,
                                :steals => 3,
                                :blocks => 1,
                                :slam_dunks => 15

            },
                               {:player_name => "Mason Plumlee",
                                :number => 1,
                                :shoe => 19,
                                :points => 26,
                                :rebounds => 11,
                                :assists => 6,
                                :steals => 3,
                                :blocks => 8,
                                :slam_dunks => 5

            },
                              {:player_name => "Jason Terry",
                                :number => 31,
                                :shoe => 15,
                                :points => 19,
                                :rebounds => 2,
                                :assists => 2,
                                :steals => 4,
                                :blocks => 11,
                                :slam_dunks => 1

            },

          ]
        },
        :away => { :team_name => "Charlotte Hornets", :colors => ["Turquoise", "Purple"],
          :players => [
                             {:player_name => "Jeff Adrien",
                              :number => 4,
                              :shoe => 18,
                              :points => 10,
                              :rebounds => 1,
                              :assists => 1,
                              :steals => 2,
                              :blocks => 7,
                              :slam_dunks => 2

            },
                                 {:player_name => "Bismack Biyombo",
                                  :number => 0,
                                  :shoe => 16,
                                  :points => 12,
                                  :rebounds => 4,
                                  :assists => 7,
                                  :steals => 22,
                                  :blocks => 15,
                                  :slam_dunks => 10

            },
                              {:player_name => "DeSagna Diop",
                               :number => 2,
                               :shoe => 14,
                               :points => 24,
                               :rebounds => 12,
                               :assists => 12,
                               :steals => 4,
                               :blocks => 5,
                               :slam_dunks => 5

            },
                            {:player_name => "Ben Gordon",
                             :number => 8,
                             :shoe => 15,
                             :points => 33,
                             :rebounds => 3,
                             :assists => 2,
                             :steals => 1,
                             :blocks => 1,
                             :slam_dunks => 0

            },
                                {:player_name => "Kemba Walker",
                                 :number => 33,
                                 :shoe => 15,
                                 :points => 6,
                                 :rebounds => 12,
                                 :assists => 12,
                                 :steals => 7,
                                 :blocks => 5,
                                 :slam_dunks => 12

            },
          ]
        }

  }

  return hash
end

#INPUT
#...Takes a team name (home or aways)
#OUTPUT
#...Returns a team hash
def get_team(team_name)
 hash = game_hash
 home_team_name = hash[:home][:team_name]
 away_team_name = hash[:away][:team_name]
 if(home_team_name == team_name)
    team_hash = hash[:home]
    return team_hash
 end
 if(away_team_name == team_name)
    team_hash = hash[:away]
    return team_hash
 end
end

#INPUT
#...Takes a players hash
#OUTPUT
#...Returns a players hash
def get_player(players_array, name)
  hash = Hash.new

  len = players_array.length()
  i = 0
  while i < len
    hash = players_array[i]
     if(hash[:player_name] == name)

        return hash
     end
     i += 1
  end
end

#INPUT
#...Takes a players hash
#OUTPUT
#...Returns a players hash
def get_all_players()


  hash = game_hash
  home_team_hash = hash[:home]
  away_team_hash = hash[:away]
  home_players_array = home_team_hash[:players]
  away_players_array = away_team_hash[:players]
  all_players_array =  home_players_array + away_players_array
  return all_players_array
end


#INPUT
#...Takes a string of the players name
#OUTPUT
#...Returns the points that player scored
def num_points_scored(name)
  points = 0
  all_players_array = get_all_players()
  single_player_hash = get_player(all_players_array, name)
  points  = single_player_hash[:points]
  return points
end

#INPUT
#...Takes a string of the players name
#OUTPUT
#...Returns the shoe size of that player
def shoe_size(name)
  shoe_size = 0
  all_players_array = get_all_players()
  single_player_hash = get_player(all_players_array, name)
  shoe_size = single_player_hash[:shoe]
  return shoe_size
end

#INPUT
#...Takes a string of the team name
#OUTPUT
#...Returns an array of the team's colors
def team_colors(team_name)
  hash = game_hash

  home_team_name = hash[:home][:team_name]
  away_team_name = hash[:away][:team_name]
  if(home_team_name == team_name)
    hash = hash[:home]
    color_array = hash[:colors]
    return color_array
  end
  if(away_team_name == team_name)
    hash = hash[:away]
    color_array = hash[:colors]
    return color_array
  end
end

#INPUT
#...
#OUTPUT
#...Returns an array of the team names in the game hash
def team_names()
  hash = game_hash
  home_team_name = hash[:home][:team_name]
  away_team_name = hash[:away][:team_name]
  team_name_array = [home_team_name, away_team_name]

  return team_name_array
end


#INPUT
#...Takes a string of the team's  name
#OUTPUT
#...Returns the number of all the players in an array
def player_numbers(team_name)
  hash = get_team(team_name)
  player_array = hash[:players]
  player_numbers = []
  len = player_array.length()
  i = 0
  while i < len
    player = player_array[i]
    number = player[:number]
    player_numbers.push(number)
    i += 1
  end
  return player_numbers
end

#INPUT
#...Takes a string of the player's name
#OUTPUT
#...Returns the number of that player
def player_stats(player_name)
  all_players_array = get_all_players()
  single_player_hash = get_player(all_players_array, player_name)
  single_player_hash.delete(:player_name)
  return single_player_hash
end

#INPUT
#...
#OUTPUT
#...Returns the number of rebounds of the player with the largest shoes
def big_shoe_rebounds()
  all_players_array = get_all_players()
  max_shoe_size = 0
  max_shoe_player_hash = Hash.new
  len = all_players_array.length()
  i = 0
  while i < len
    player = all_players_array[i]
    shoe_size = player[:shoe]
    if(shoe_size > max_shoe_size)
        max_shoe_size = shoe_size
        max_shoe_player_hash = player
    end
    i += 1
  end
  rebounds = max_shoe_player_hash[:rebounds]
  return rebounds

end


#INPUT
#...
#OUTPUT
#...Returns the player name with the most points scored
def most_points_scored()
  all_players_array = get_all_players()
  max_points = 0
  max_points_player_hash = Hash.new
  len = all_players_array.length()
  i = 0
  while i < len
    player = all_players_array[i]
    points = player[:points]
    if(points > max_points)
        max_points = points
        max_points_player_hash = player
    end
    i += 1
  end
  name = max_points_player_hash[:player_name]
  return name
end

#INPUT
#...
#OUTPUT
#...Returns the name of the winning team
def winning_team()
  home_team_hash = game_hash[:home]
  home_players_array = home_team_hash[:players]
  home_points = 0

  away_team_hash = game_hash[:away]
  away_players_array = away_team_hash[:players]
  away_points = 0
  i = 0
  h_len = home_players_array.length()
  a_len = away_players_array.length()
  while i < h_len && i < a_len
    h_player = home_players_array[i]
    h_points = h_player[:points]
    home_points += h_points
    a_player = away_players_array[i]
    a_points = a_player[:points]
    away_points += a_points
    i += 1
  end
  if(home_points > away_points)
    name = home_team_hash[:team_name]
    return name
  end
  name = name = away_team_hash[:team_name]
  return name
end


#INPUT
#...
#OUTPUT
#...Returns the name of the player with the longest name
def player_with_longest_name()
  all_players_array = get_all_players()
  max_len = 0
  max_name = ""
  len = all_players_array.length()
  i = 0
  while i < len
    player = all_players_array[i]
    p_name = player[:player_name]
    p_len = p_name.length
    if(p_len > max_len)
        max_len = p_len
        max_name = p_name
    end
    i += 1
  end

  return max_name
end

#INPUT
#...
#OUTPUT
#...Returns true if the player with the longest name has the most steals
def long_name_steals_a_ton?()
  all_players_array = get_all_players()
  max_steals = 0
  max_steals_player_hash = Hash.new
  len = all_players_array.length()
  i = 0
  while i < len
    player = all_players_array[i]
    steals = player[:steals]
    if(steals > max_steals)
        max_steals = steals
        max_steals_player_hash = player
    end
    i += 1
  end
  max_steal_name = max_steals_player_hash[:player_name]
  longest_name = player_with_longest_name()
  print max_steal_name

  print longest_name
  if(max_steal_name == longest_name )
    return true
  end
  return false
end










"































"
