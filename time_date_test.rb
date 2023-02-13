#!/usr/bin/ruby -w

time1 = Time.new
puts "Current Time : " + time1.inspect

# Time.now is a synonym:
time2 = Time.now
puts "Current Time : " + time2.inspect

# Components of a Time
puts "=======Components of a Time==========\n"
puts time1.year    # => Year of the date 
puts time1.month   # => Month of the date (1 to 12)
puts time1.day     # => Day of the date (1 to 31 )
puts time1.wday    # => 0: Day of week: 0 is Sunday
puts time1.yday    # => 365: Day of year
puts time1.hour    # => 23: 24-hour clock
puts time1.min     # => 59
puts time1.sec     # => 59
puts time1.usec    # => 999999: microseconds
puts time1.zone    # => "UTC": timezone name

new_value = time2.to_a
p new_value

puts Time.utc(*new_value)

# Returns number of seconds since epoch
time3 = Time.now.to_i  

# Convert number of seconds into Time object.
Time.at(time3)

# Returns second since epoch which includes microseconds
puts "=======current time with microseconds==========\n"
time3 = Time.now.to_f
puts time3

# timezones and daylight savings interpretation
puts "=======timezones and daylight savings interpretation==========\n"
time4 = Time.new
puts time4.zone       # => "UTC": return the timezone
puts time4.utc_offset # => 0: UTC is 0 seconds offset from UTC
puts time4.zone       # => "PST" (or whatever your timezone is)
puts time4.isdst      # => false: If UTC does not have DST.
puts time4.utc?       # => true: if t is in UTC time zone
puts time4.localtime  # Convert to local timezone.
puts time4.gmtime     # Convert back to UTC.
puts time4.getlocal   # Return a new Time object in local zone
puts time4.getutc     # Return a new Time object in UTC

# TIme Arithmetic
puts "=======time arithmetic==========\n"
now = Time.now          # Current time
puts now

past = now - 10         # 10 seconds ago. Time - number => Time
puts past

future = now + 10  # 10 seconds from now Time + number => Time
puts future

diff = future - past     # => 10  Time - Time => number of seconds
puts diff