class Movie < ApplicationRecord
    has_many :users, dependent: :destroy

    include HTTParty
  base_uri 'http://www.omdbapi.com'

  def self.generate(api_id)
    movie = find_by api_id: api_id
    return movie unless movie.nil?

    response = get "/?i=tt#{api_id}&apikey=cd771f9f"
    puts response
    # movie_poster = response["sprites"]["front_default"]

    create!(title: response["Title"],
            genre: response["Genre"],
            year: response["Year"],
            picture: response["Poster"],
            synopsis: response["Plot"], 
            api_id: api_id)
  end
end
