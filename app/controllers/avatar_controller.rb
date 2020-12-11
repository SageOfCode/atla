class AvatarController < ApplicationController
  def search
    @characters = AvatarFacade.character_search(params[:character])
  end

  def show
    @character = AvatarFacade.character_data(params[:api_id])
  end
end