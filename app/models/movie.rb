class Movie < ApplicationRecord
    def self.all_ratings
        ['G', 'PG', 'PG-13', 'R']
    end

    def self.with_ratings(ratings_list)
        if ratings_list
            return Movie.where(rating:ratings_list)
        end
        return Movies.all
    end
end
