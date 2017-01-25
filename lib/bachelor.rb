def get_first_name_of_season_winner(data, season)
  # code here
  winner=nil
  data.each do |season_num, candidates|
    if season_num==season
    candidates.each do |candidate|
      if candidate["status"]=="Winner"
        winner = candidate["name"].slice(/.+\s/).chop
      end
    end
    end
  end
  winner
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |seasons, candidates|
    candidates.each do |candidate|
      if candidate["occupation"]== occupation
        return candidate["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  counter=0
  data.each do|season, candidates|
    candidates.each do|candidate|
      if candidate["hometown"]== hometown
        counter+=1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  # code here
  data.each do|season, candidates|
    candidates.each do|candidate|
      if candidate["hometown"]== hometown
        return candidate["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  average=0
  data.each do |season_num, candidates|
    if season_num==season
      candidates.each do|candidate|
        average+= candidate["age"].to_f
      end
      average/=candidates.length
    end
  end
  average.round
end
