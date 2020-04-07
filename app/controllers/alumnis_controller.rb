class AlumnisController < ApplicationController

    def index
        alumnis = Alumni.all 
        render json: alumnis
    end

end
