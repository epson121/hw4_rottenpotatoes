class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  
  def self.searchByDirectorName(director)
    @movies = Movie.all
    @moviesByDirector = []
    @movies.each do |movie|
      if movie.director == director
        @moviesByDirector << movie
      end
    end
    return @moviesByDirector
  end
end


