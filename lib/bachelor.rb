def get_first_name_of_season_winner(data, season)
  # code here
  name = ""
  data[season].each do|info|
    info.each do |key,value|
      if key == "status"
        if value == "Winner"
          name = info["name"].split(" ")
          name = name[0]
        end
      end
    end
  end
  return name
end

def get_contestant_name(data, occupation)
  # code here
  test1 = ""
  data.each do |season,array|
    array.each do|info|
      info.each do |category,data|
        if category == "occupation"
          if data == occupation
            info.each do |category,data|
              if category == "name"
                test1 = data
              end
            end
          end
        end
      end
    end
  end
  return test1
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0
  data.each do |season,array|
    array.each do|info|
      info.each do |category,data|
        if category == "hometown"
          if data == hometown
            count += 1
          end
        end
      end
    end
  end
  return count
end

def get_occupation(data, hometown)
  # code here
  #test1 = ""
  data.each do |season,array|
    array.each do|info|
      info.each do |category,data|
        if category == "hometown"
          if data == hometown
            info.each do |category,data|
              if category == "occupation"
                return data
              end
            end
          end
        end
      end
    end
  end
  #return test1
end

def get_average_age_for_season(data, season)
  # code here
  num = 0
  count = 0
  data[season].each do|info|
    info.each do |key,value|
      if key == "age"
        num = num + value.to_f
        count += 1
      end
    end
  end
  average = num/count
  return average.round

end
