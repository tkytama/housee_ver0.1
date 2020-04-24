class ArchitectureListsController < ApplicationController
  skip_before_action :login_required
  def index
    @architects = EditProfile.all

  end

  def show
    @architects = EditProfile.all
  end



private

  def edit_architecture_params
    params.require(:edit_architecture).permit(:architect, :architect_title, :architect_comment, :completion_year, :completion_month, :address, :edit_profile_id, :image, :id)
  end

end
