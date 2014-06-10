require_relative 'contact'
require_relative 'rolodex'
require 'sinatra'

@@rolodex = Rolodex.new

get '/' do
	@crm_app_name = "sup"
	erb :index
end

get '/contacts' do
	@contacts = []
	@contacts << Contact.new("Bob", "Marley", "smokeerryday.com", "cool joe")
	@contacts << Contact.new("Boo", "Yah", "scaryman.com", "ghost buster")
	@contacts << Contact.new("Chris", "Mega", "legoman", "funny man")
	erb :contact
end

get '/contacts/new' do
end

get '/contacts/:id' do 
end

get '/contacts/:id/edit' do
end

