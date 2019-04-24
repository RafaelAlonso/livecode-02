class Router

  def initialize(controller)
    @running = true
    @control = controller
  end

  def run
    puts '=========================='
    puts '====== TASK MANAGER  ====='
    puts '=========================='
    while @running
      show_options
      opt = gets.chomp.to_i
      print `clear`
      exec_option(opt)
    end
  end

  def show_options
    puts 'What do you want to do?'
    puts '1 - list all task'
    puts '2 - ??????'
    puts '3 - ??????'
    puts '4 - ??????'
    puts '5 - ??????'
    puts '0 - exit the app'
  end

  def exec_option(opt)
    case opt
    when 0
      puts 'See you later!'
      @running = false
    when 1
      @control.list_all
    else
      puts 'Invalid option'
    end
  end

end
