# your code goes here
def begins_with_r(array)
  array.each {|word| return false if word.start_with?("r") == false}
  true
end
end