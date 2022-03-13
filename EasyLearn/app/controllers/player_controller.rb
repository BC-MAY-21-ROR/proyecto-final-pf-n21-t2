class PlayerController < ApplicationController
  before_action :require_login
  def index
    @videoPlayer = Video.where(title: params[:v_title])

    @videoPlayer.each do |owner|
      @userID = owner.user_id
      @catID = owner.category_id
    end

    @owner = User.where(id: @userID)
    @videoRelated = Video.where(category_id: @catID)
  end
end
