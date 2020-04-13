class AlumnisController < ApplicationController

    def index
        alumnis = Alumni.all 
        render json: alumnis
    end

    def create 
        alum = Alumni.create(strong_alum_params)
        render json: alum
    end

    def update 
        alum = Alumni.find(params[:id])
        alum.update(strong_alum_params)
        render json: alum
    end

    def destroy 
        alum = Alumni.find(params[:id])
        alum.destroy()
        render json: alum
    end

    def strong_alum_params
        params.require(:alumni).permit(:hillel, :hili, :haftr, :birthday, :firstName, :middleName, :lastName, :marriedName, :motherName, :fatherName, :currentAddress, :homePhone, :cellPhone, :workPhone, :emailAddress, :clubs, :awards, :hillelDayAttended, :hillelSleepAttended, :hillelDayYears, :hillelSleepYears, :hillelDayCamper, :hillelSleepCamper, :hillelDayCounselor, :hillelSleepCounselor, :hillelDaySpecialty, :hillelSleepSpecialty, :hiliDayAttended, :hiliDayYears, :hiliDayCamper, :hiliDayCounselor, :hiliDaySpecialty, :hiliWhiteAttended, :hiliWhiteYears, :hiliWhiteCamper, :hiliWhiteCounselor, :hiliWhiteSpecialty, :hiliInternationalAttended, :hiliInternationalYears, :hiliInternationalYears, :hiliInternationalCamper, :hiliInternationalCounselor, :hiliInternationalSpecialty, :classParent, :boardTrustee, :boardEducation, :committees, :alumniNewsletters, :commsOutreach, :classReunions, :alumniEvents, :fundraisingEvents, :databaseResearch, :alumniChoir)
    end

end
