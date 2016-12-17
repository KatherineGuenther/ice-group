require_relative 'game_controller'

filename = ARGV[0]

game_controller = GameController.new

game_controller.run(filename)


