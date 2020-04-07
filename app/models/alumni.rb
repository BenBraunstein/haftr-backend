class Alumni < ApplicationRecord

    def clubsArr
        return self.clubs.split(',')
    end

    def sportsTeamsArr
        return self.sportsTeams.split(',')
    end

    def cheerleadingArr
        return self.cheerleading.split(',')
    end

    def awardsArr
        return self.awards.split(',')
    end

    def committeesArr
        return self.committees.split(',')
    end
end
