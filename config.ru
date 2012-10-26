#config.ru

require './main'
run Sinatra::Application

$stdout.sync = true