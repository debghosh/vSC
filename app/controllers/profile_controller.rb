class ProfileController < ApplicationController
  skip_before_filter :verify_authenticity_token, :only => [:create]

  def index
    @profiles = Profile.all
  end

  def create
    @flag = false
    begin
      Profile.create_or_update_profile_from_params(params)
      @flag = true
    rescue

    end
    render json: {success: @flag}
  end

end
