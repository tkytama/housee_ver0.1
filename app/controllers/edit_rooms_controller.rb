class EditRoomsController < ApplicationController
  before_action :set_edit_room, only: %i[show edit]

  def index
    @edit_rooms = EditRoom.where(user_id: current_user.id)
  end

  def show
  end

  def new
    @edit_room = EditRoom.new
  end

  def edit
  end

  def update
    edit_room = current_user.edit_rooms.find(params[:id])
    edit_room.update!(edit_room_params)
    redirect_to edit_room_url, notice: "タスク「#{edit_room.room_title}」を更新しました。"
  end

  def create
    @edit_room = current_user.edit_rooms.new(edit_room_params)

    if @edit_room.save
      redirect_to @edit_room, notice: "タスク「#{@edit_room.room_title}」を登録しました。"
    else
      render :new
    end
  end

  def destroy
    edit_room = current_user.edit_rooms.find(params[:id])
    edit_room.destroy
    redirect_to edit_profiles_url, notice: "タスク「#{edit_room.room_title}」を削除しました。"
  end

  private

  def set_edit_room
    @edit_room = current_user.edit_rooms.find(params[:id])
  end

  def edit_room_params
    params.require(:edit_room).permit(:room_title, :room_comment, :completion_year, :completion_month)
  end

end
