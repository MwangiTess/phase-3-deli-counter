# Write your code here.

def line(array)
    if array.empty?
      puts "The line is currently empty."
    else
      line_message = "The line is currently:"
      array.each_with_index do |name, index|
        position = index + 1
        line_message += " #{position}. #{name}"
      end
      puts line_message
    end
  end
  
  def take_a_number(array, name)
    array << name
    position = array.length
    puts "Welcome, #{name}. You are number #{position} in line."
  end
  
  def now_serving(array)
    if array.empty?
      puts "There is nobody waiting to be served!"
    else
      serving = array.shift
      puts "Currently serving #{serving}."
    end
  end
  

katz_deli = []
other_deli = ["Logan", "Avi", "Spencer"]
another_deli = ["Amanda", "Annette", "Ruchi", "Jason", "Logan", "Spencer", "Avi", "Joe", "Rachel", "Lindsey"]

puts line(katz_deli) # Output: "The line is currently empty."
puts line(other_deli) # Output: "The line is currently: 1. Logan 2. Avi 3. Spencer"
puts line(another_deli) # Output: "The line is currently: 1. Amanda 2. Annette 3. Ruchi 4. Jason 5. Logan 6. Spencer 7. Avi 8. Joe 9. Rachel 10. Lindsey"

puts take_a_number(katz_deli, "Ada") # Output: "Welcome, Ada. You are number 1 in line."
puts take_a_number(other_deli, "Grace") # Output: "Welcome, Grace. You are number 4 in line."

puts now_serving(katz_deli) # Output: "There is nobody waiting to be served!"
puts now_serving(other_deli) # Output: "Currently serving Logan."
