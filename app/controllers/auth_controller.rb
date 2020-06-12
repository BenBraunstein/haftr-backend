class AuthController < ApplicationController

    def login 
        user = User.find_by('lower(email) = ?', params[:email].downcase)
        if user && user.authenticate(params[:password])
            render json: {
                user: user,
                token: JWT.encode({userId: user.id}, ENV['JWT_SECRET'])
            }
        else
            render json: { errors: "Invalid username, password combination."}
        end
    end

    def autologin
        token = request.headers["Authorization"].split.last
        if token != "undefined" 
            user_id = JWT.decode(token, ENV["JWT_SECRET"])[0]["userId"]            
            user = User.find(user_id)
            if user 
                render json: user
            else
                render json: { errors: "Invalid login token, please re-log in manually"}
            end
        end
    end
end