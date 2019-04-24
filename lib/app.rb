require 'sqlite3'
require_relative 'router'
require_relative 'controllers/task_controller'

# cria o BD
db_path = File.join(File.dirname(__FILE__), "bd/tasks.sqlite")
DB = SQLite3::Database.new(db_path)
DB.results_as_hash = true
# cria o controller
controller = TaskController.new

# cria o Router
router = Router.new(controller)
router.run
