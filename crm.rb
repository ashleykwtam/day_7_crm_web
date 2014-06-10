require 'sinatra'

get '/' do
	@crm_app_name = "sup"
	erb :index
end

get '/contacts' do
	@contact_name = "mandy"
	erb :contact
end

get '/contacts/new' do
end

get '/contacts/:id' do
end

get '/contacts/:id/edit' do
end

