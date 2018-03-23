def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_hash|
    if contestant_hash["status"] == "Winner"
      return contestant_hash["name"].split(" ")[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["occupation"] == occupation
        return contestant_hash["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  total_people_from_hometown = 0

  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        total_people_from_hometown += 1
      end
    end
  end

  total_people_from_hometown
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant_hash|
      if contestant_hash["hometown"] == hometown
        contestant_hash["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
end
