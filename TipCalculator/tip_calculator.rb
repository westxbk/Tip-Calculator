# first we get user inputs for our variables
# and convert them to Floats (they'll initially be strings).

#number of people
puts "Enter number of people in group"
number_of_people = gets.chomp.to_i

#validation code here

number_of_people




puts "Enter Cost of Meal (e.g., 22.45): $ "
meal_cost = gets.to_f

puts "Enter Tax Rate, as % percent (e.g., 12.5 or 15): "
tax_percent = Float(gets)

puts "Tip percentage you like to leave, % percent  (e.g., 18): "
tip_percent = Float(gets)

sleep 3
#clears screen
puts "\e[H\e[2J"


tax_value = meal_cost * tax_percent/100
meal_with_tax = meal_cost + tax_value
tip_value = meal_with_tax * tip_percent/100
total_cost = meal_with_tax + tip_value
cost_per_person = total_cost / number_of_people

# %.2f - floats in 2 decimal points
#
print "===========================================================================================\n"
print "The pre-tax cost of your meal was                 💵: $%.2f.\n" % meal_cost
print "At #{tax_percent} percent, tax for this meal is             💵 : $%.2f.\n" % [tax_percent, tax_value]
print "For a %d%% tip, you should leave                   💵 : $%.2f.\n" % [tip_percent, tip_value]
print "The grand total for this meal is then             💵 : $%.2f.\n" % total_cost
print "My share of the total bill is                     💵 : $%.2f.\n" % cost_per_person
print "===========================================================================================\n"
