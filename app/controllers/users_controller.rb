class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users
    end

    def create
        user = User.create({email: params['email'], admin:false})
        user.update(password: params[:password])
        render json: {
            user: user,
            token: JWT.encode({userId: user.id}, ENV['JWT_SECRET'])
        }
    end

    private
    def strong_user_params
        params.require(:email)
    end

end
