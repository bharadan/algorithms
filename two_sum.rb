# Given an array of integers, return indices of the two numbers such that they add up to a specific target.
# You may assume that each input would have exactly one solution, and you may not use the same element twice.
# Given nums = [2, 7, 11, 15], target = 9,
# Because nums[0] + nums[1] = 2 + 7 = 9,
# return [0, 1].

require "rubygems"

#target, *args = ARGV

def has_sum(target, *args)

  begin
    raise ArgumentError.new("You messed up!") if target.empty?
  rescue ArgumentError => e
  end
    
  index = []

  puts "Input"
  puts "--"
  puts "target = #{target}"
  puts "array = #{args}"
  puts "length of the array = #{args.length}"
  puts "--"

  if args.length == 0
    puts "Nothing to add, array is empty - #{args}"
  elsif args.length == 1
    puts "Nothing to add, array has only 1 element - #{args}"
  end

  (args.size + 1).times
    .flat_map { |i| args.combination(2).to_a }
    .any? { |s|
      if s.inject(:+) == target
        s.each do |element|
          index << args.find_index(element)
        end
      end
    }
    puts "Output :"
    puts
    if index.empty?
      puts "None of the elements add up to target #{target}"
    else
      puts "Index of elements in an array that add up to target #{target} are"
      puts index.inspect
    end
    puts "-------------------------------------------------------------------------------------------------"
end

puts has_sum()
puts has_sum(10)
puts has_sum(10, 1)
puts has_sum(10, 2, 3)
puts has_sum(11, 1, 2, 3, 4, 7)
puts has_sum(5, 1, 4, 2, 3)
