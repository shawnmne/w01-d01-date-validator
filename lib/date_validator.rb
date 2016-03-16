# This method takes three arguments: month, date, and year, and returns either TRUE
# or FALSE (the boolean values, not the string representation of those boolean
# values) depending on whether the date is valid (i.e. does exist on the calendar)
# or is not valid (i.e. does not exist on the calendar).
#
# Here are the rules:
#
# + The month must be between 1 and 12 (inclusive)
# + The year must be between 1880 and 2280 (inclusive)
# + The day must exist within the month
# + You must account for leap years (look up how leap years work)
# + No using the `Date` class (we'll refactor to allow the `Date` class later this week)
# + Only worry about integer inputs (no floats, strings, etc.)
#
# This method should, in its final form, not do any output.


def valid_year?(year)
  pass_test = TRUE    
  if year < 1880 || year > 2280 
    pass_test = FALSE
  end
  return pass_test
 end
     

def valid_month?(month)
  pass_test = TRUE    
  if month < 1 || month > 12 
    pass_test = FALSE
  end
  return pass_test
end

def valid_day?(month, day)
  pass_test = TRUE  
  if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
    if day > 31 || day < 1
      pass_test = FALSE
    end  
  end

  if month == 4 || month == 6 || month == 9 || month == 11
    if day > 30 || day < 1
      pass_test = FALSE
    end
  end
  return pass_test
end  
  
def valid_day_february?(month, day, year)
  pass_test = TRUE    
  if month == 2 && !((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
      if day > 28
        pass_test = FALSE
      end
  end
  
  if month == 2  && ((year % 4 == 0 && year % 100 != 0) || year % 400 == 0)
      if day > 29
        pass_test = FALSE
      end 
  end 
  return pass_test
end

def valid_date?(month, day, year)
 pass_year = valid_year?(year)
 pass_month = valid_month?(month)
 pass_day = valid_day?(month, day)
 pass_day_february = valid_day_february?(month, day, year)
  return pass_year && pass_month && pass_day && pass_day_february
end 