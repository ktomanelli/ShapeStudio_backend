class UsersController < ApplicationController
    before_action :authorized, only: [:profile,:stay_logged_in,:hide_notice]

    def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end

    def create
        @user = User.create(params.permit(:email,:password))
        if @user.valid?
            @token = encode_token({user_id: @user.id})
            render json: { user: UserSerializer.new(@user), token: @token }, status: :created
        else
            render json: {message: "Failed to create new user"}, status: 403
        end
    end

    def login
        @user = User.find_by(email:params[:email])
        if @user && @user.authenticate(params[:password])
            @token = encode_token({user_id: @user.id})
            render json: { user: UserSerializer.new(@user), token: @token }
        else
            render json: {message:'Incorrect username or password'}
        end
    end

    def stay_logged_in
        token = encode_token({user_id: @user.id})
        render json:{
            user: UserSerializer.new(@user),
            token: token
        }
    end

    def hide_notice
        @user.update(show_notice:false)
        render json:{
            status:200
        }
    end
    
end
