class Message < ApplicationRecord
	# belongs_to :sender, class_name: 'User'
	# belongs_to :email, class_name: 'User'

	validates :title, presence: true
	validates :body, presence: true
	validates :recipient_id, presence: true

	def self.search_recipient(id)
		if id
			self.where('recipient_id = ? ', "#{id}")
		else
			self.all
		end
	end

	def self.search_sender(id)
		if id
			self.where('sender_id = ? ', "#{id}")
		else
			self.all
		end
	end

end
