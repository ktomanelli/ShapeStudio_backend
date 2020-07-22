class ScenesController < ApplicationController
    def load
        @user = User.first
        render json: Scene.first
    end

    def save
        @user = User.first
        Scene.create(user_id:@user.id,scene_string:params[:scene])
    end
end
