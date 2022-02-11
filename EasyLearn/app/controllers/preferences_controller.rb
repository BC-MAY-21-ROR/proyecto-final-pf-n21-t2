class PreferencesController < ApplicationController

  
  def preferences 
    if params[:data]
      respond_to do |format|
        format.html do
          "sdfsdfs"
        end
      end
    end
  end
end
