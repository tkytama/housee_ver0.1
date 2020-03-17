class ArchitectureListsController < ApplicationController
  skip_before_action :login_required
  def index
    @architects = EditProfile.all

  end



private



end
