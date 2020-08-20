class ArchitectureListsController < ApplicationController
  skip_before_action :login_required

  def index
    @architects = EditProfile.all
  end

  def show
    @architects = EditProfile.all
    @architectures = EditArchitecture.find(params[:id])
  end
end
