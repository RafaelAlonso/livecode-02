class TaskView
  def print_tasks(modelos)
    modelos.each do |task|
      done = task.done ? 'X' : ' '
      puts "#{task.id} - [#{done}] - #{task.desc} "
    end
  end
end
