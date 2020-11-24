require 'pry'

def second_supply_for_fourth_of_july(holiday_hash)
  # given that holiday_hash looks like this:
  # {
  #   :winter => {
  #     :christmas => ["Lights", "Wreath"],
  #     :new_years => ["Party Hats"]
  #   },
  #   :summer => {
  #     :fourth_of_july => ["Fireworks", "BBQ"]
  #   },
  #   :fall => {
  #     :thanksgiving => ["Turkey"]
  #   },
  #   :spring => {
  #     :memorial_day => ["BBQ"]
  #   }
  # }
  # return the second element in the 4th of July array
  holiday_hash[:summer][:fourth_of_july][1]
end

def add_supply_to_winter_holidays(holiday_hash, supply)
  # holiday_hash is identical to the one above
  # add the second argument, which is a supply, to BOTH the
  # Christmas AND the New Year's arrays
  holiday_hash[:winter].each do |holiday, thing|
    # binding.pry
    thing << supply
  end
  # binding.pry


end


def add_supply_to_memorial_day(holiday_hash, supply)
  # again, holiday_hash is the same as the ones above
  # add the second argument to the memorial day array
  # binding.pry
  holiday_hash[:spring][:memorial_day] << supply


end
# binding.pry
def add_new_holiday_with_supplies(holiday_hash, season, holiday_name, supply_array)
  # code here
  # remember to return the updated hash
  holiday_hash[season][holiday_name] = supply_array
end

def all_winter_holiday_supplies(holiday_hash)
  # return an array of all of the supplies that are used in the winter season
  holiday_hash[:winter].values.flatten
end

def all_supplies_in_holidays(holiday_hash)
  # iterate through holiday_hash and print items such that your readout resembles:
  # Winter:
  #   Christmas: Lights, Wreath
  #   New Years: Party Hats
  # Summer:
  #   Fourth Of July: Fireworks, BBQ
  # etc.

  main_list=""
  holiday_hash.each do |season,holiday|
    season_list=""
    
    puts "#{season.to_s.capitalize}:"

    holiday_hash[season].each do |holiday_name,holiday_supply_array|
      #binding.pry
      holiday_supplies = " "
      pre_caps_holiday = holiday_name.to_s.split("_")
      # binding.pry
      pre_caps_holiday.each do |word|
        # binding.pry
        holiday_supplies += " #{word.capitalize}"
      end

      holiday_supplies += ":"
      
      list=""
      holiday_supply_array.each do |item|
        list += " #{item},"
      end
      holiday_supplies += list.delete_suffix(',')
      puts "#{holiday_supplies}"
            
    end
    #main_list += season_list

  end
# binding.pry
  #puts main_list
end

=begin
    i = 0
      for i < holiday.length
        # binding.pry
        pre_caps_holiday = holiday_supply_array[i].to_s.split(" ")
        
      end
    end
  end
end
        
        binding.pry
        post_caps_holiday=" "
        pre_caps_holiday.each do |word|
          post_caps_holiday += " #{word.capitalize}"
        end
        post_caps_holiday += ":"
        binding.pry
        end

        ii=0
        "  #{holiday_supply_array[ii].to_s.split(" ").capitalize}"
      ii += 1
        binding.pry

      i += 0
    end

      # binding.pry
    end

  end
end
=end

#### FAILED CODE ####
=begin
  main_list=[]
  holiday_hash.each do |season,holiday|
    season_list=[]
    season_list=[] << "#{season.key.to_s}\n"
    binding.pry
    season.each do |this_holiday, supply|
      holiday_supplies = []
      holiday_supplies << "  #{this_holiday.key.to_s.split(" ").capitalize}:"
      binding.pry
      supply.each do |this_supply|
        binding.pry
        i == 1
        if i < this_supply.length-1
          holiday_supplies << " #{this_supply},"
          i += 1
        elsif holiday_supplies == this_supply.length-1
          holiday_supplies << " #{this_supply}\n"
        end
      end
      # binding.pry

    end
  end
  list.join("")
end
=end

def all_holidays_with_bbq(holiday_hash)
  # return an array of holiday names (as symbols) where supply lists
  # include the string "BBQ"
  bbq_holidays = []
  holiday_hash.each do |season,holidays|
    holidays.each do |single_holiday|
      single_holiday[1].each do |item|
        if item =="BBQ"
          bbq_holidays << single_holiday[0]
        end
      end
    # item.to_a[1].find {|i| i== "BBQ"}
     #   bbq_holidays << item.keys
      #end
    end
  end
  bbq_holidays
end







