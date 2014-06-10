require_relative 'contact'
require 'sinatra'

get '/' do					# requesting a path for localhost:4567/
	@crm_app_name = "a;slkfja"
	erb :index
end

get '/about' do 		# will read this page first before going to the /:name
	"This is my about page"
end

get '/contacts' do
end

get '/contacts/new' do
	end

get '/contacts/:id' do
end

get '/:name' do 		# one route for name, wildcards should be placed last if you want to be explicit
	@contact_name = params[:name]
	erb :name
end

# gets '/zack' do
# 	"Hi I'm Zack!"		# don't need to use puts, puts communicates with terminal
											# sinatra will output string
# end
