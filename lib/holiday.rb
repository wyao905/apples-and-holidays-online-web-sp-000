require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  holiday_supplies = {
    :winter => {:christmas => ["Lights", "Wreath"], :new_years => ["Party Hats"]},
    :summer => {:fourth_of_july => ["Fireworks", "BBQ"]},
    :fall => {:thanksgiving => ["Turkey"]},
    :spring => {:memorial_day => ["BBQ"]}
    }
  return holiday_supplies[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each { |holiday, stuff| stuff << supply }
end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  holiday_hash[:spring][:memorial_day] << supply
end

def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.
  holiday_hash.each do |season, holidays|
    puts "#{season.to_s.capitalize}:"
    season.each do |holiday, supply|
      puts "#{holiday.to_s.capitalize}: #{supply}"
    end
  end
end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq = []
  holiday_hash.each do |seasons, holidays|
    holidays.each do |holiday, supply|
      supply.each do |item|
        if item.include?("BBQ")
          bbq << holiday
        end
      end
    end
  end
  return bbq
end







