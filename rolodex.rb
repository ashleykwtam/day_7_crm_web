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

	def find(contact_id)
		@contacts.find { |contact| contact.id == contact_id }
	end
end