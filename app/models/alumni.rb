class Alumni < ApplicationRecord
    has_many :children
    has_many :siblings, dependent: :destroy
    has_many :children, dependent: :destroy

    has_one_attached :photo

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
