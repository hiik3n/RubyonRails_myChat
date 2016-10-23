class User < ApplicationRecord
	validates :name, presence: true
	validates :email, presence: true, uniqueness: {case_sensitive: false}
	has_secure_password

	# def sent_messages
	# 	Message.where(sender_id: id)
	# end

	has_many :sent_messages, foreign_key: 'sender_id', class_name: 'Message'
	has_many :received_messages, foreign_key: 'recipient_id', class_name: 'Message'

end
 