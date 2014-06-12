class Rolodex
	attr_reader :contacts

	def initialize(name)
		@contacts = []
		@id = 1
		@name = name
	end

	def add_contact(contact)
		contact.id = @id
		@contacts << contact
		@id += 1
	end
end