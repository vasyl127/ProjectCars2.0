
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

  def click_enter
    print "\n[ Press Enter to continue ]"
    i = gets.chomp()
    remove(2)
  end

end
end
