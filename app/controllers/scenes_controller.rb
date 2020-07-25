class ScenesController < ApplicationController
    def load
        @user = User.first
        render json: {scene:Scene.first,camera:Camera.first}
    end
    def load_new        
        @user = User.first
        render json: {scene:Scene.first,camera:Camera.first}
    end
    def save
        @user = User.first
        scene = Scene.create(user_id:@user.id,scene_string:params[:scene])
        Camera.create(scene_id:scene.id,camera_string:params[:camera])
    end
end
