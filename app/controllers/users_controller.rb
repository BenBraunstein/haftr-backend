class UsersController < ApplicationController

    def index 
        users = User.all 
        render json: users
    end

    def create
        user = User.create({email: params['email'].downcase, admin:false})
        user.update(password: params[:password])
        if user.id != nil 
            render json: {
                user: user,
                token: JWT.encode({userId: user.id}, ENV['JWT_SECRET'])
            }
        else
            render json: {
                error: "Error creating user. Email is already taken"
            }
        end
    end

    private
    def strong_user_params
        params.require(:email)
    end

end
