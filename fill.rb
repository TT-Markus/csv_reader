#!/usr/bin/env ruby

header = ([ "KEY", "Date", "Time", "GMT"] + (1..40).map {|i| "l_#{i}"} + ["Last"]).join(",")

puts header

start_time = Time.utc(2012,2,1, 12,15,43)

(1..300_000).each do |j|
  time = start_time + j / 10.0
  field = [ j < 150_000 ? "KEY1" : "KEY2", time.strftime("%Y%m%d"), time.strftime("%H:%M:%S.%3N"), j < 150_000 ? "+0" : "+4"] + (1..40).map {rand(10000) / 100.0} + ["zz"]
  puts field.join(",")+"\n"
end
