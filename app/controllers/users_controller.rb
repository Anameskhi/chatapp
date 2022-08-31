class UsersController < ApplicationController
  before_action :set_user
  
  def show
    @users = User.all_except(current_user)

    @room = Room.new
    @rooms = Room.public_rooms
    @room_name = get_name(@user,current_user)
    @single_room = Room.where(name: @room_name).first || Room.create_private_room([@user, current_user], @room_name)

    @message = Message.new
    @messages = @single_room.messages.order(created_at: :asc)
    render 'rooms/index'
  end

  private

  def set_user
    @user = User.find_by(id: params[:id])
  end

  def get_name(user1, user2)
    user = [user1, user2].sort
    "private_#{user[0].id}_#{user[1].id}"
  end
end