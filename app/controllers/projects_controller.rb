class ProjectsController < ApplicationController
    before_action :authorized

    def index
        projects = @user.projects
        render json: projects
    end
    
    def new
        project = Project.new(project_params[:project])
        project.user_id = @user.id
        project.save()
        if(project.id)
            for objectParam in project_params[:three_objects]
                object = ThreeObject.new(objectParam)
                object.project_id = project.id
                object.save()
            end
        else
            render :json => {messages: 'Failed to create project'}
        end
    end

    def update
        project = @user.projects.find(params[:id])
        project.update(project_params)
    end

    def delete
        project = @user.projects.find(params[:id])
        project.destroy
    end
    
    private def project_params
        params.require(:payload).permit(
            project: [
                :name,
                :file_schema
            ],
            three_objects: [
                :id,
                :screenshot,
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
            ]
        )
    end
end