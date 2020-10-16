class ScenesController < ApplicationController
    before_action :authorized

    def load
        scene = @user.scenes.find(params[:id])
        render json: {scene:scene}
    end

    def save
        scene = Scene.new(scene_params)
        scene.user_id = @user.id
        scene.save()
    end

    def index
        scenes = @user.scenes
        render json: scenes
    end

    def update
        scene = @user.scenes.find(params[:id])
        scene.update(:scene_string=>params[:scene_string])
    end

    private
    def scene_params
        params.require(:scene).permit(:save_name,:scene_string,:screenshot)
    end
end


