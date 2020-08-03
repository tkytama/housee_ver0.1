class EditArchitecturesController < ApplicationController
  before_action :set_edit_architecture, only: [:show, :edit, :update, :destroy]

  def show
    @edit_rooms = @edit_architecture.edit_rooms
  end

  def new
    @edit_architecture = current_user.edit_architectures.build
    @edit_architecture.edit_profile_id = @edit_architecture.user_id
  end

  def edit
  end

  def update
    @edit_architecture.update(edit_architecture_params)
    redirect_to edit_architecture_url, notice: "タスク「#{@edit_architecture.architect_title}」を更新しました。"
  end

  def create
    @edit_architecture = current_user.edit_architectures.new(edit_architecture_params)

    if @edit_architecture.save
      redirect_to @edit_architecture, notice: "タスク「#{@edit_architecture.address}」を登録しました。"
    else
      render :new
    end
  end

  def destroy
    @edit_architecture.destroy
    redirect_to edit_profiles_url, notice: "タスク「#{@edit_architecture.architect_title}」を削除しました。"
  end

  private

  def edit_architecture_params
    params.require(:edit_architecture).permit(:architect, :architect_title, :architect_comment, :completion_year, :completion_month, :address, :edit_profile_id, :image)
  end

  def set_edit_architecture
    @edit_architecture = current_user.edit_architectures.find(params[:id])
  end
end
