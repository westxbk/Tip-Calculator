 # this is an interactive mystery game
# work in progress
#
puts "What is your name? \n\n"
name = gets.chomp

#clears screen
puts "\e[H\e[2J"


puts " Let's Play a Game, #{name}?\n\n"
puts " Show us if you have what it takes to be a detective!!!"

#Question 1
puts " The safe has been robbed at the Adrienne Arsht Center and it could be any of the cast. \n\n"
puts " Brandon plays the cat and is often wearing his cat skin costume. \r
The manager of the Center says he saw Brandon brought a cup of tea for him. He didn't looked up, \r
but knew it was Brandon, because he caught a glimpse of the cat skin costume. The tea was drugged \r
and made him fall asleep. When the manager woke up, the safe was empty. Brandon denies any involvement \r
in the burglary. His bestfriend, Michelle is also saying that she has nothing to do wityh it, too. \r
Many people think that it was Brandon, but being quite daft, they think that Michelle helped him. \n\n"

puts "What should you do first?\n\n"
#Choices set 1
puts "type \"1\" if 1 - Watch the play"
puts "type \"2\" if 2 - Look for clues"
puts "type \"3\" if 3 - Check alibis"
puts "type \"4\" if 4 - Talk to cast \n\n"


#input from player here
answer_one = gets.chomp
#control ask player to only enter selection otherwise ask again

 #until (answer = gets.to_i).between?(1, 4) do
  # puts "Pls enter a number between 1-4"
   #answer_one = gets.chomp
 #end

case answer_one
when answer_one = "4"
  point1 = 1
  puts "Good job, #{name}. I really think that's what we need to do first, too, \n\n"
  puts " Now let's go and talk to the cast..."
else
  point1 = 0
  puts "I don't think so. Let's just go and talk to them first..."

end

#timer
sleep 5
#clears screen
puts "\e[H\e[2J"
#to check points
p point1


# Question 2
puts " The Chief Inspector suggested that you go and interview the cast at the Center.\n\n"
puts " You agreed that this is a great idea and therefore go to the Center. The cast are just coming out the back of the building. \r
 You interview Jonathan and William first. They say that at the time of the robbery they were having beer \r
 at the J Wakefield Brewery at the Wynwood area.They are confident in their alibi and you move on. May nervously tells you that \r
 she was at her old Aunt's house. She gives the name and address and then hurries off. You think it's slightly suspicious \r
 but, don't think that May has the guts to perform a robbery. Justin tells you happily that he was performing \r
 at a different theatre at the time of the robbery. Just ask his brother, Brandon. Michelle was at her mother's house but wasn't seen \r
 until after the robbery was done. Brandon was just lounging in the Center, but heard nothing and saw no one. \n\n"

puts "Now you've talked to the cast, what should you do?\n\n"

#option validator


#Choices set 2
puts "type \"1\" if 1 - Talk to the Chief Inspector about what you've learned"
puts "type \"2\" if 2 - Check up on alibis"
puts "type \"3\" if 3 - Watch the play"
puts "type \"4\" if 4 - Go home and think about what you've learned \n\n"

#input from player here
answer_two = gets.chomp

case answer_two
when answer_two = "2"
  point2 = 1
  puts "Yes, checking on their alibis is the next logical move"
else
  point2 = 0
  puts "I don't think so. I think it's best to check up on their alibis first. \r
  So let's go and check on them..."
end


#timer
sleep 5
#clears screen
puts "\e[H\e[2J"
#to check points
p point2


#Question 3
puts "You check up on the alibis.\n\n"
puts "William and Jonathan were indeed at the J Wakefield Brewery. Unfortunately the \r
waitress does not know what time they left as the clock was broken. \r
May was at her Aunt's all afternoon. The milkman was at Justin's show in the other theater, you'll ask him about that one, later. \r
Michelle's alibi isn't the best, either... Both Michelle and Brandon are still on top of your list of suspects. \n\n"

puts "What do you do next?\n\n"

#Choices set 3
puts "type \"1\" if 1 - Go see the show"
puts "type \"2\" if 2 - Go drink some beer at the Wakefield Brewery"
puts "type \"3\" if 3 - Talk to the Chief"
puts "type \"4\" if 4 - Talk to the milkman\n\n"

#input from player here
answer_three = gets.chomp
case answer_three
when answer_three = "4"
  puts "That's sounds about right."
  puts "Let's go and see the mailman..."
  point3 = 1
when answer_three = "1"
  puts "I think watching the show won't help. Let's talk to the mailman, instead..."
  point3 = 0
when answer_three = "2"
  puts "I love to drink a couple beers. I really think I need one right now. But, let's talk to the \r
  mailman instead..."
  point3 = 0
when answer_three = "3"
  puts "I don't have anything to report to the Chief, yet. Let's talk to the mailman first..."
else
  puts "Stop joking around. Let's just go and see the mailman..."
  point3 = 0
end


#timer
sleep 5

#clears screen
puts "\e[H\e[2J"
p point3

#Question 4
puts "You go talk to the milkman.\n\n"
puts "He was indeed at the show but did not enjoy it as Justin seemed to have a really bad cough. You are puzzled. \r
Justin did not seem to have a cough when you saw him earlier.\n\n"
puts "After this short talk what should you do?\n\n"

#Choices set 4
puts "type \"1\" if 1 - Go and watch the show"
puts "type \"2\" if 2 - Go grab a beer. You really need it right now"
puts "type \"3\" if 3 - Talk to the Chief \n\n"

#input from player here
answer_four = gets.chomp
case answer_four
when answer_four = "1"
  puts "Good idea. We need to check on all of them again and look for clues."
  puts "Besides, you think you need to see Justin, too."
  point4 = 1
when answer_four = "2"
  puts "I know, I know. I love to have that beer also, but we need to check on some stuff first."
  point4 = 0
when answer_four = "3"
  puts "We can talk to the chief later when we have something concrete."
  point4 = 0
else
  puts "Hey be serious!!! Let's go and watch the show "
  point4 = 0
end


#timer
sleep 5
#clears screen
puts "\e[H\e[2J"
p point4

#Question 5
puts "You go see the show the next day.\n\n"
puts "It was well performed. Half-way through Brandon realises that his suit is ripped. \r
He pats it and carries on acting, slightly slower than before.\n\n"

puts "Next, you should:"

#Choices 5
puts "type \"1\" if 1 - Go and see Brandon."
puts "type \"2\" if 2 - Go and see Justin."
puts "type \"3\" if 3 - Talk to the Chief \n\n"

#input from player here
answer_five = gets.chomp
case answer_five
when answer_five = "1"
  puts "I believe that is a good idea. Let's see why Brandon's suit is ripped"
  point5 = 1
when answer_five = "2"
  puts "Well, we'll talk to him after talking to Brandon. We have to find out first why Beandon's suit is ripped."
  point5 = 0
else
  puts " Just type 1 or 2 or 3 next time, ok? Now let's go see the show..."
  point5 = 0
end


#timer
sleep 5
#clears screen
puts "\e[H\e[2J"
p point5

#Question 6
puts "You go and see Brandon. Michelle is trying to stitch up his suit. You ask Brandon how come his suit is torn. \r
he says he does not know at all. He says it ripped when he was wearing it, but Michelle corrects him. \r
She says this rip is an old one, someone's ripped must have ripped it before.\n\n"

puts "Next you:"

#Choices 6
 puts "type \"1\" if 1 - Go home to puzzle over the mystery."
 puts "type \"2\" if 2 - Talk to Justin before he leaves."
 puts "type \"3\" if 3 - Go and talk to the Chief. \n\n"

 #input from player here
 answer_six = gets.chomp
 case answer_six
 when answer_six = "2"
   puts "Now we talk to Justin! Good decision."
   point6 = 1
 when answer_six = "2"
   puts "This is no time to slack. We need to get going while the trail is hot. Let's go see Justin."
 else
   puts "Hey, type 1 or 2 or 3. Now, let's go see Justin"
   point6 = 0
 end


 #timer
 sleep 5
 #clears screen
puts "\e[H\e[2J"
 p point6

 #Question 7
 puts " You go to talk to Justin before he leaves. Justin is surprised that you know about his cough, and says maybe he caught \r
 it off his brother who had been coughing all week. Suddenly it all clicks in your head/or does it???\n\n"

puts "Next you:"

#Choice 7
 puts "type \"1\" if 1 - Call the Chief Inspector."
 puts "type \"2\" if 2 - Go home and think."
 puts "type \"3\" if 3 - Keep talking to Justin.\n\n"

 #input from player here
 answer_seven = gets.chomp
 case answer_seven
 when answer_seven = "1"
   puts "Well might be a good idea to call the Chief now that you have your suspect"
   point7 = 1
 when answer_seven = "2"
   puts "Don't you have a suspect, yet???..Let's all the Chief.."
 when answer_seven = "2"
   puts "I don't think we still need to talk to him. Let's go and call the Chief..."
 else
   puts "My oh my. You are stubborn. Just type 1 or 2 or 3!!! C'mon let's call the Chief..."
   point7 = 0
 end


 #timer
 sleep 5
 #clears screen
puts "\e[H\e[2J"
 p point7

 #Question 8
 puts "This is all the clues you can find. You call the Chief and talk to him about the mystery. \r
 You tell him you think the burglar is...\n\n"

 #Choice 8

 puts "type \"1\" if 1 - Brandon and/or Michelle"
 puts "type \"2\" if 2 - Justin"
 puts "type \"3\" if 3 - William and/or Jonathan."
 puts "type \"4\" if 4 - May or The Manager. \n\n"

#input from player here
answer_eight = gets.chomp
case answer_eight
when answer_eight = "2"
  puts "Bravo. You got it right!"
  point8 = 8
else
  puts " Uh-oh..You got it wrong this time. You can play all over again if you want."
  point8 = 0
end


#timer
sleep 5
#clears screen
puts "\e[H\e[2J"
#check point 8
p point8
#Score
score = point1 + point2 + point3 + point4 + point5 + point6 + point7 + point8
p score


correct_answer = "His brother, Justin who has the cough took his place at the show so he could \r
go and steal the money from the safe. He laced the tea he left for the manager. He wore Brandon's cat skin costume, \r
and since he is slightly larger than his brother, ripped his suit down the tail while wearing it. \r
Well done if you got Justin without reading this first. \n\n"


case score
when score = (1..7)
  puts " YOU ARE A DETECTIVE!!! \n\n"
  puts "As a DETECTIVE, your bravery is admired but your detective skills are yet to be discovered.\n\n"
  puts "You've got a looong way to go. The Sergeant might have a few stern words, \r
  but will let you get off this time. You promised yourself to... \n\n"

  puts "Work Hard.\n\n"
  puts "The correct answer is Justin. \n\n"
  print correct_answer


when score = (8..15)
  puts "YOU ARE SERGEANT!!!"
  puts "As Sergeant,  you are team leader in charge of an entire watch shift of detective squads. \n\n"
  puts "You are one step away from being Lieutenant. You still got a few skills to learn. The Lieutenent\r
  is keeping an eye on you. He is a bit worried that you might be after his position. But until then... \n\n"

  puts "Work Hard.\n\n"
  puts "The correct answer is Justin. \n\n"
  print correct_answer

else
  puts "LIEUTENANT! *bows*.\n\n"
  puts "You're respected very much by every one in your team. \r
  There is no practice needed and you're on top of your game. \r
  CONGRATULATIONS!"

  puts "Stay Sharp.\n\n"
  print correct_answer

end
