class ScenesController < ApplicationController
    before_action :authorized

    def load
        scene = @user.scenes.find(params[:id])
        render json: {scene:scene}
    end

    def save
        Scene.create(user_id:@user.id,scene_string:params[:scene],save_name:params[:save_name])
    end

    def index
        scenes = @user.scenes
        render json: scenes
    end

    def update
        scene = @user.scenes.find(params[:id])
        scene.update(:scene_string=>params[:scene_string])
    end

end


