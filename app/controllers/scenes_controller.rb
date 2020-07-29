class ScenesController < ApplicationController
    def load
        @user = User.first
        @scene = Scene.find(params[:id])
        render json: {scene:@scene}
    end
    def load_new        
        @user = User.first
        render json: {scene:Scene.first,camera:Camera.first}
    end
    def save
        @user = User.first
        Scene.create(user_id:@user.id,scene_string:params[:scene],save_name:params[:save_name])
    end
    def index
        @user = User.first
        @scenes = @user.scenes
        render json: @scenes
    end
    def update
        @user = User.first
        @scene = Scene.find(params[:id])
        @scene.update(:scene_string=>params[:scene_string])
    end

    # private
    # def scene_params
    #   params.require(:scene).permit(:scene_string)
    # end
end


