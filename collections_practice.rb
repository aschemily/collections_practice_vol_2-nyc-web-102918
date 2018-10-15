# your code goes here
def begins_with_r(array)
  array.each {|word| return false if word.start_with?("r") == false}
  true
  end
end

def contain_a(array)
  array.select{|word| word.include? ("a")}
end

def first_wa(array)
  array.detect {|word| word.to_s.start_with?("wa")}
end

def remove_non_strings(array)
  array.delete_if {|element| element.class != String}
end

def count_elements(array)
  counts = Hash.new(0)
  array.each {|element| counts[element] += 1 }
  returnarr= []
  counts.each do |element,num|
    element.each {|key, val| return_arr << {key => val, :count => num}}
  end
  returnarr
end

def merge_data(keys,data)
  merged_hashes = []
  data.each do |hash|
    hash.each do |name, info|
      keys.each do |key_val|
        merged_hashes << key_val.merge(info) if key_val.values[0] == name 
      end
    end
  end
  merged_hashes
end

def find_cool(array)
  cool_hashes = []
  array.each do |hash|
    hash.each {|k, v| cool_hashes << hash if k == :temparature && v == "cool"}
  end
  cool_hashes
end