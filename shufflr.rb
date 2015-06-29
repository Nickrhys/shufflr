module Shufflr
  @arr = []
    
  def Shufflr.run_shufflr
    puts "Once all names are entered, hit return to exit"
    sleep 1
    puts "Enter your name"
    @name = gets.chomp
    Shufflr.input_names
  end
    
  def Shufflr.input_names  
    while !@name.empty? do
      @arr << @name
      puts "next name please"
      @name = gets.chomp
    end
    Shufflr.shuffle_script
  end

  def Shufflr.shuffle_script
    puts "The names you have are #{@arr.join(", ")}"
    sleep 2
    puts "Now let's shuffle them"
    sleep 2
    puts "..."
    3.times {
      sleep 2
      puts "shuffle"
      sleep 1
      puts "..."
    }
    Shufflr.shuffle
  end

  def Shufflr.shuffle
     @arr.shuffle!
     puts "the first name is..."
     puts "#{@arr.pop}"
     puts "press enter to get the next name"
     gets.chomp
     Shufflr.show_names
   end

  def Shufflr.show_names
    puts "the first name is..."
    puts "#{@arr.pop}"
    puts "press any key to get the next name"
    gets.chomp
    while !@arr.empty? do
      @arr.shuffle!
      puts "the next name is..."
      puts "#{@arr.pop}" 
      Shufflr.get_next_name
    end
  end

  def Shufflr.get_next_name  
    if !@arr.empty? 
      puts "press any key to get the next name"
      gets.chomp
    else
      Shufflr.goodbye
    end
  end

  def Shufflr.goodbye
    sleep 1
    puts "You have run out of names. Goodbye"
  end
end