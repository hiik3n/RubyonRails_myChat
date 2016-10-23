module MessagesHelper
	def is_messaged_read(message)
		if message.read_at
			return "SEEN"
		else
			return "UNSEEN"
		end
	end

	def set_message_read(message)
		message.read_at = Time.now
		message.save
	end
end
