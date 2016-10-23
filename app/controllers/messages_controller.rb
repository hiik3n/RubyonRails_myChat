class MessagesController < ApplicationController
	def index
		@messages = Message.search_recipient(current_user.id).order(created_at: :desc)
	end

	def sent
		@messages = Message.search_sender(current_user.id).order(created_at: :desc)
	end

	def new
		@message = Message.new
		@users = User.all
	end


	def create
		@message = Message.new message_params
		if @message.save
			redirect_to messages_path, notice: 'Message created'
		else
			redirect_to new_message_path, notice: 'Message created failed'
		end
	end

	def show
		@message = Message.find(params[:id])
	end


	private

	def message_params
		params.require(:message).permit(:title, :body, :recipient_id, :sender_id)
	end
end
