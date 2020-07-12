class AuthController < ApplicationController

    def login 
        user = User.find_by('lower(email) = ?', params[:email].downcase)
        if user && user.authenticate(params[:password])
            if user.alumni.photo.attached?
                alumResp = {
                    user: {
                        info: user,
                        alum: user.alumni,
                        siblings: user.alumni.siblings,
                        children: user.alumni.children,
                        photo: url_for(user.alumni.photo)
                    },
                    token: JWT.encode({userId: user.id}, ENV['JWT_SECRET'])
                }
            else
                alumResp = {
                    user: {
                        info: user,
                        alum: user.alumni,
                        siblings: user.alumni.siblings,
                        children: user.alumni.children,
                    },
                    token: JWT.encode({userId: user.id}, ENV['JWT_SECRET'])
                }
            end
            render json: alumResp
        else
            render json: { error: "Invalid username, password combination."}
        end
    end

    def autologin
        token = request.headers["Authorization"].split.last
        if token != "undefined" 
            user_id = JWT.decode(token, ENV["JWT_SECRET"])[0]["userId"]            
            user = User.find(user_id)
            if user 
                if user.alumni.photo.attached?
                    alumResp = {
                        user: {
                            info: user,
                            alum: user.alumni,
                            siblings: user.alumni.siblings,
                            children: user.alumni.children,
                            photo: url_for(user.alumni.photo)
                        }
                    }
                else
                    alumResp = {
                        user: {
                            info: user,
                            alum: user.alumni,
                            siblings: user.alumni.siblings,
                            children: user.alumni.children,
                        }
                    }
                end
                render json: alumResp
            else
                render json: { errors: "Invalid login token, please re-log in manually"}
            end
        end
    end
end