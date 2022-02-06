class ThreeObjectsController < ApplicationController
    before_action :authorized

    def load
        object = @user.three_objects.find(params[:id])
        render json: {object: object}
    end

    def save
        for objectParam in three_object_params[:three_objects]
            object = ThreeObject.new(objectParam)
            object.user_id = @user.id
            object.save()
        end
    end

    def index
        objects = @user.three_objects
        render json: objects
    end

    def update
        object = @user.three_objects.find(params[:id])
        if three_object_params[:three_objects]
            for objectParam in three_object_params[:three_objects]
                object.update(objectParam)
            end
        end
        if three_object_params[:screenshot]
            object.screenshot = three_object_params[:screenshot]
            object.save()
        end
    end

    private
    def three_object_params
        params.require(:payload).permit(:screenshot, three_objects: [
            :id,
            :save_name,
            :scene_string,
            :object_type,
            :name,
            :parent,
            :matrixAutoUpdate,
            :visible,
            :castShadow,
            :receiveShadow,
            :frustumCulled,
            :matrixWorldNeedsUpdate,
            :renderOrder,
            :customDepthMaterial,
            :customDistanceMaterial,
            quaternion: [],
            layers: [:mask],
            normalMatrix: {elements: []},
            matrixWorld: {elements: []},
            matrix: {elements: []},
            modelViewMatrix: {elements: []},
            up: [:x,:y,:z],
            position: [:x,:y,:z],
            rotation: [:x,:y,:z],
            scale: [:x,:y,:z]
        ])
    end
end


