
class View
class << self

  def remove(i)
    for i in 1..i do
      printf ("\033[A\33[2K")
    end
  end

  def user_input
    print " Enter your command:"
    string = gets.chomp()
    remove(1)
    return string
  end

  def change?
    puts "Do you want to change default Car parametrs?"
    puts "  1. Yes"
    puts "  2. No"
    i = View.user_input
    remove(3)
    true if i == '1'
  end

  def change_list
    puts "Which parameter do you want to change?"
    puts "  1. Max RPM"
    puts "  2. Max GEAR"
    puts "  3. Torque"
    puts "  4. Max Speed"
    puts "  5. Next"
    i = View.user_input
    remove(6)
    return i
  end

end
end
