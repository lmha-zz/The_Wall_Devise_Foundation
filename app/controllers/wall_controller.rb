class WallController < ApplicationController
  def index
    @all_messages = Message.all.order('created_at desc')
    @message = current_user.messages.build
    @comment = Comment.new
  end

  def post
  end

  def message
  end
end
