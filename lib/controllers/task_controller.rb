require_relative '../models/task'
require_relative '../views/task_view'

class TaskController
  def initialize
    @rizzi = TaskView.new
  end

  def list_all
    # 1. Recuperar dados do banco de dados
    list = DB.execute("SELECT * FROM tasks")

    # 2. Criar modelos baseados nos dados obtidos
    modelos = list.map do |linha|
      linha['done'] = linha['done'] == 1
      Task.new(linha)
    end

    # 3. Mostrar esses modelos para o usuario
    @rizzi.print_tasks(modelos)

  end

end
