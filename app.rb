require 'sinatra/base'
require 'data_mapper'
require 'sinatra/json' #json helper
Dir['./models/*'].each {|file| require file}

class Taskmanage < Sinatra::Base
#save our DB in this directory
DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/development.db")

get '/' do
	@tasks = Task.all
	erb :index
end

end
