require 'pry'

def game_hash
  {
    :home => {:team_name => "Brooklyn Nets",
              :colors => ["Black", "White"],
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
                :number => 0,
                :shoe => 16,
                :points => 3,
                :rebounds => 4,
                :assists => 8,
                :steals => 4,
                :blocks => 2,
                :slam_dunks => 0
                },
                {:player_name => "Brook Lopez",
                :number => 23,
                :shoe => 18,
                :points => 13,
                :rebounds => 7,
                :assists => 1,
                :steals => 0,
                :blocks => 2,
                :slam_dunks => 3
                },
                {:player_name => "Mason Plumlee",
                :number => 30,
                :shoe => 17,
                :points => 15,
                :rebounds => 6,
                :assists => 4,
                :steals => 2,
                :blocks => 4,
                :slam_dunks => 2
                },
                {:player_name => "Reggie Bullock",
                :number => 25,
                :shoe => 19,
                :points => 8,
                :rebounds => 8,
                :assists => 6,
                :steals => 3,
                :blocks => 1,
                :slam_dunks => 1
                }
              ]
            },
    :away => {:team_name => "Boston Celtics",
              :colors => [ "Green", "White"],
              :players => [
                {:player_name => "Kemba Walker",
                :number => 8,
                :shoe => 16,
                :points => 24,
                :rebounds => 6,
                :assists => 12,
                :steals => 4,
                :blocks => 0,
                :slam_dunks => 2
                },
                {:player_name => "Jaylen Brown",
                :number => 7,
                :shoe => 18,
                :points => 7,
                :rebounds => 7,
                :assists => 3,
                :steals => 3,
                :blocks => 0,
                :slam_dunks => 1
                },
                {:player_name => "Jason Tatum",
                :number => 0,
                :shoe => 19,
                :points => 22,
                :rebounds => 8,
                :assists => 11,
                :steals => 4,
                :blocks => 4,
                :slam_dunks => 4
                },
                {:player_name => "Taco Fall",
                :number => 99,
                :shoe => 17,
                :points => 5,
                :rebounds => 13,
                :assists => 2,
                :steals => 0,
                :blocks => 7,
                :slam_dunks => 1
                },
                {:player_name => "Gordon Hayward",
                :number => 20,
                :shoe => 17,
                :points => 20,
                :rebounds => 6,
                :assists => 9,
                :steals => 2,
                :blocks => 4,
                :slam_dunks => 3
                }
              ]
    }
  }
end


def num_points_scored(players_name)
  game_hash.each do |place, team|
      team.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          if player[:player_name] == players_name
            return player[:points]
          end
        end
      end
    end
  end
end






def shoe_size(players_name)
  game_hash.each do |place, team|
    team.each do |attribute, data|
      if attribute == :players
        data.each do |player|
          if player[:player_name] == players_name
            return player[:shoe]
          end
        end
      end
    end
  end
end


def team_colors(team_name)
  game_hash.each do |place, team|
    if team[:team_name] == team_name
      return team[:colors]
    end
  end
end




