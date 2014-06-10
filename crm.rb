require 'sinatra'

get '/' do
	@crm_app_name = "a;slkfja"
	erb :index
end

