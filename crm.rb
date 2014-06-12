require_relative 'contact'
require_relative 'rolodex'
require 'sinatra'

@@rolodex = Rolodex.new("hi")

get '/' do
	@crm_app_name = "Ash"
	erb :index
end

get '/contacts' do
	erb :contact
end

get '/contacts/new' do
	erb :new_contact
end

post '/contacts' do
	new_contact = Contact.new(params[:first_name], params[:last_name], params[:email], params[:note])
	@@rolodex.add_contact(new_contact)
	redirect to('/contacts')
end

get '/contacts/1000' do
	@contact = @@rolodex.find(1)
end

get '/contacts/:id' do 
end

get '/contacts/:id/edit' do
end


