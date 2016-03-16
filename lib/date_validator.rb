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

def valid_date?(month, day, year)
  pass_test = TRUE 
       
  if year < 1880 || year > 2280 #check to make sure year falls within range
    pass_test = FALSE
  end

  if month < 1 || month > 12  #check to make sure month falls within possibilities
    pass_test = FALSE
  end

  if day < 1                  #check to make sure at least is the beginning of the month
    pass_test = FALSE
  end

  if month == 1 || month == 3 || month == 5 || month == 7 || month == 8 || month == 10 || month == 12
    if day > 31 
      pass_test = FALSE
    end  
  end

  if month == 4 || month == 6 || month == 9 || month == 11
    if day > 30 
      pass_test = FALSE
    end
  end
  
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

