module MessagesHelper
	def is_messaged_read(message)
		if message.read_at
			return "SEEN"
		else
			return "UNSEEN"
		end
	end

	def is_messaged_read_bool(message)
		if message.read_at
			return true
		else
			return false
		end
	end

	def set_message_read(message)
		message.read_at = Time.now
		message.save
	end
end
