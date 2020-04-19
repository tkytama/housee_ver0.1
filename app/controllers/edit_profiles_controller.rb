class EditProfilesController < ApplicationController

  def index
    @edit_profiles = EditProfile.where(user_id: current_user.id)
    @edit_architectures = EditArchitecture.where(user_id: current_user.id)
  end

  def show
    @edit_profile = current_user.edit_profiles.find(params[:id])
    @edit_architectures = EditArchitecture.where(user_id: current_user.id)
  end

  def new
    @edit_profile = EditProfile.new
  end

  def edit
    @edit_profile = current_user.edit_profiles.find(params[:id])
  end

  def update
    edit_profile = current_user.edit_profiles.find(params[:id])
    edit_profile.update!(edit_profile_params)
    redirect_to edit_profile_url, notice: "タスク「#{edit_profile.surname}」を更新しました。"
  end

  def create
    @edit_profile = current_user.edit_profiles.new(edit_profile_params)

    if @edit_profile.save
      redirect_to @edit_profile, notice: "タスク「#{@edit_profile.surname}」を登録しました。"
    else
      render :new
    end
  end

  def destroy
    edit_profile = current_user.edit_profiles.find(params[:id])
    edit_profile.destroy
    redirect_to edit_profiles_url, notice:"タスク「#{edit_profile.surname}」を削除しました。"
  end

  private

  def edit_profile_params
    params.require(:edit_profile).permit(:surname, :office_id, :office_name, :lastname, :position, :postal_cord, :address, :average_cost, :phon_number, :architect_concept, :office_url, :image)
  end

  def edit_room_params
    params.require(:edit_room).permit(:room_title, :room_comment, :completion_year, :completion_month)
  end

  def edit_architecture_params
    params.require(:edit_architecture).permit(:architect, :architect_title, :architect_comment, :completion_year, :completion_month, :address, :image)
  end



end
