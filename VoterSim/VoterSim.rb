#ATT: ********GAME REQUIRES SOUND.***********


# Introduction -> Class = Politics
# i.e. class Class
#   alias old_new new
#   def new(*args)
#     print "Creating a new ", self.name, "\n"
#     old_new(*args)
#   end
# end
#
# class Name
# end
#
# n = Name.new
class Politics


  def initialize
    @voters = []
    @politicians = []
  end

  # Introduction to polls -> Question 1 & 2
  def introdution
    puts `say Welcome to the 2016 Presidential Election!`
    main_menu
  end

  # Selection prompt: CLUD

  def main_menu
    puts "Please choose one of the following selection below:
    (C)reate, (L)ist, (U)pdate, (D)elete"
    @menu_option = gets.chomp.upcase
    case @menu_option
    when "C"
      create
    when "L"
      list
    when "U"
      update
    when "D"
      delete
    else
      puts `say That's an invalid selection, please try again.`
      main_menu
    end
  end

  # Define - Create / Assign values

  def create
    menu_option = @menu_option
    create_what
  end

  # Selection category - Politician Or Voter

  def create_what
    puts "Please choose a selection.:
    (P)olitician or (V)oter"
    choice = gets.chomp.capitalize.strip
    case choice
    when "P"
      create_politician
    when "V"
      create_voter

      puts `say That's an invalid selection, please try again.`
      puts ""
      create_what
    end
  end

  # Name values - Choose your politician name i.e. Sam Smith
  # Create "else" values ?

  def create_politician
    puts "What is the politician's name (first - last name i.e. Sam Smith)?"
    politician_name = gets.chomp.capitalize.strip
    puts "Which party would you like to enroll #{politician_name} in?:
    (D)emocract or (R)epublican"
    politician_party = gets.chomp.capitalize.strip
    case politician_party
    when "D"

      politician_party = "Democrat"
    when "R"

      politician_party = "Republican"
    else
      puts `say That's an invalid selection, please try again.`
      create_politician
    end
    politician = Politician.new(politician_name, politician_party)
    @politicians << politician
    puts `say #{politician_party} #{politician_name} has been added to the list!`
    puts ""
    main_menu
  end


  # Voters values : Voter names and category selection

  def create_voter
    puts "What is the voter's name (first - last name i.e. Sam Smith)?"
    voter_name = gets.chomp.capitalize.strip
    puts "Which party would you like to enroll #{voter_name} in?:
    (L)iberal, (C)onservative, (T)ea Party,(S)ocialist, (U)nbaised"
    voter_party = gets.chomp.capitalize.strip
    case voter_party
    when "L"
      #  "Liberal party"
      voter_party = "Liberal Party"
    when "C"
      # "Conservative party"
      voter_party = "Conservative Party"
    when "T"
      # "Tea party"
      voter_party = "Tea Party"
    when "S"
      # "Socialist party"
      voter_party = "Socialist Party"
    when "U"
      # p "Neutral"
      voter_party = "Unbaised"
    else
      puts `say That's an invalid selection, please try again.`
      create_voter
    end
    vote = Voter.new(voter_name, voter_party)
    @voters << vote
    puts `say Thank you, #{vote.voter_name} has been added to the #{vote.voter_party} list!`
    puts ""
    main_menu
  end


  # (U)pdate list for politician and voters.

  def list
    menu_option = @menu_option
    puts "View (P)oliticians or (V)oters list?"
    list_choice = gets.chomp.capitalize.strip
    case list_choice
    when "V"
      puts "Voters: "
      puts @voters
      puts ""
      main_menu
    when "P"
      puts "Politicians: "
      puts @politicians
      puts ""
      main_menu
    else
      puts `say That's an invalid selection, please try again.`
      puts ""
      list
    end
    puts ""
    main_menu
  end



  def update
    menu_option = @menu_option
    puts "Update (P)oliticians or (V)oters list?"
    update_choice = gets.chomp.capitalize.strip


    # Updates to be made.

    case update_choice
    when "V"
      update_voter
    when "P"
      update_politician
    else
      puts `say That's an invalid selection, please try again.`
      puts ""
      update
    end
    puts ""
  end

  # Update name or party

  def update_voter
    puts "Which name would you'd like to update?"
    voter_update = gets.chomp.capitalize.strip
    @voters.each do |voter|
      if voter.voters_name == voter_update
        puts "Update (N)ame or (P)arty?"
        name_or_party = gets.chomp.capitalize.strip
        if name_or_party == "N"
          puts "Please enter the name below."
          updated_name = gets.chomp.capitalize.strip
          voter.voter_name = updated_name
          puts "Thank you, #{voter_update} has been updated in the system."
        elsif name_or_party == "P"
          puts "Which party would you like to update?
          (L)iberal, (C)onservative, (T)ea Party, (S)ocialist, (N)one"
          updated_party = gets.chomp.capitalize.strip

          while !voter_valid_party?(updated_party)
            puts `say That's an invalid selection, please try again.`
            updated_party = gets.chomp.capitalize.strip
          end

          # Confirmation that change request has been completed.

          voter.voter_party = !translate_party(updated_party)
          puts "Your requested change has been updated!"
          puts ""
        else
          puts `say That's an invalid selection, please try again.`
          puts ""
          update
        end

        # Note to self - Remove one.
        main_menu
      else
        puts `say That's an invalid selection, please try again.`
        main_menu
      end
    end
  end


  # Update list for Politicians

  def update_politician
    puts "Which politician would you like to update?"
    politician_update = gets.chomp.capitalize.strip
    @politicians.each do |politician|
      if politician.politician_name == politician_update
        puts "Update (N)ame or (P)arty?"
        name_or_party = gets.chomp.capitalize.strip
        if name_or_party == "N"
          puts "Please enter the name below"
          updated_name = gets.chomp.capitalize.strip
          politician.politician_name = updated_name
          puts "Thank you, #{updated_name} has been updated in the system."
        elsif name_or_party == "P"
          puts "Which party would you like to update? (R)epublican or (D)emocract?"
          updated_party = gets.chomp.capitalize.strip

          while !valid_party?(updated_party)
            puts "That's and invalid selection, please try again.
            (R)epublican or (D)emocract?"
            updated_party = gets.chomp.capitalize.strip
          end

          politician.politician_party = translate_party(updated_party)
          puts "The following requested change has been updated."
          puts ""
        else
          puts `say That's an invalid selection, please try again.`
          puts ""
          update
        end
        main_menu
      else
        puts `say That's an invalid selection, please try again.`
        main_menu
      end
    end
  end

  # D - Democrat / R - Republican

  def valid_party?(party_input)
    array = ['D', 'R']
    array.include? party_input
  end

  # Liberal, Conservative, Tea Party, Socialist, Unbaised

  def voter_valid_party?(party_input)
    array = ['L', 'C', 'T', 'S', 'U']
    array.include? party_input
  end

  # Input parties below.

  def translate_party(party_input)
    if party_input == "D"
      "Democrat"
    elsif party_input == "R"
      "Republican"
    end
  end

  # LCTSU

  def translate_party(party_input)
    if party_input == "L"
      "Liberal"
    elsif party_input == "C"
      "Conservative"
    elsif party_input == "T"
      "Tea Party"
    elsif party_input == "S"
      "Socialist"
    elsif party_input == "U"
      "Unbaised"
    end
  end

  # Deletion confirmation, Double confirmation. Are you sure?

  def delete
    menu_option = @menu_option
    puts "Delete (P)oliticians or (V)oters list?"
    delete_choice = gets.chomp.capitalize.strip
    case delete_choice

      # When voter input "V"

    when "V"
      puts "Are you sure you'd like to delete? #{voter_name}?"
      name_deleting = gets.chomp.capitalize.strip
      @voters.delete_if do |voter|
        if voter.voter_name == name_deleting
          puts "Deletion complete!"
          true
        else
          false
        end
      end


      # When politician input "P"
    when "P"
      puts "Are you sure you'd like to delete #{politician_name}?"
      name_deleting = gets.chomp.capitalize.strip
      @politicians.delete_if do |politician|
        if politician.politician_name == name_deleting
          puts "Deletetion complete."
          true
        else
          false
        end
      end
      main_menu
    else
      puts `say That's an invalid selection, please try again.`
      puts ""
      update
    end
    puts ""
    main_menu
  end
end

# Call class on voter

class Voter < Politics
  attr_accessor :voter_name, :voter_party
  def initialize(voter_name, voter_party)
    @voter_name = voter_name
    @voter_party = voter_party
  end

  def to_s
    @voter_name + " - " + @voter_party
  end

end

# Call class on politician

class Politician < Politics
  attr_accessor :politician_name, :politician_party
  def initialize(politician_name, politician_party)
    @politician_name = politician_name
    @politician_party = politician_party
  end

  def to_s
    @politician_name + " - " + @politician_party
  end

end

# Call actions

behold = Politics.new
behold.introdution
Status
