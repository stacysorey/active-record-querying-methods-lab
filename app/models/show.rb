class Show < ActiveRecord::Base

#returns the rating of the TV show with the highest rating
    def self.highest_rating
        self.maximum(:rating)
    end
#returns the name of the TV show with the highest rating
    def self.most_popular_show
        self.where("rating = ?", self.highest_rating).first
    end
#returns the rating of the TV show with the lowest rating
    def self.lowest_rating
        self.minimum(:rating)
    end
#returns the name of the TV show with the lowest rating
    def self.least_popular_show
        self.where("rating = ?", self.lowest_rating).first
    end
#returns the sum of all the ratings of all the tv shows
    def self.ratings_sum
        self.sum(:rating)
    end
#returns an array of all of the shows with a rating above 5
    def self.popular_shows
        self.where("rating >= ?", 5)
    end
#returns an array of all of the shows, listed in alphabetical order
    def self.shows_by_alphabetical_order
        self.order(:name)
    end

end