module Shufflr
  @arr = []
    
  def self.run_shufflr
    puts "Once all names are entered, hit return to exit"
    sleep 1
    puts "Enter your name"
    @name = gets.chomp
    self.input_names
  end
    
  def self.input_names  
    while !@name.empty? do
      @arr << @name
      puts "next name please"
      @name = gets.chomp
    end
    self.shuffle_script
  end

  def self.shuffle_script
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
    self.shuffle
  end

  def self.shuffle
     @arr.shuffle!
     puts "the first name is..."
     puts "#{@arr.pop}"
     puts "press enter to get the next name"
     gets.chomp
     self.show_names
   end

  def self.show_names
    puts "the first name is..."
    puts "#{@arr.pop}"
    puts "press any key to get the next name"
    gets.chomp
    while !@arr.empty? do
      @arr.shuffle!
      puts "the next name is..."
      puts "#{@arr.pop}" 
      self.get_next_name
    end
  end

  def self.get_next_name  
    if !@arr.empty? 
      puts "press any key to get the next name"
      gets.chomp
    else
      self.goodbye
    end
  end

  def self.goodbye
    sleep 1
    puts "You have run out of names. Goodbye"
  end
end