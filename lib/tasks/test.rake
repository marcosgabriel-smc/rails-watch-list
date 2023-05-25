
task :test do

  require 'uri'
  require 'net/http'
  require 'openssl'


  url = "http://tmdb.lewagon.com/movie/top_rated?"

  url_serialized = URI.open(url).read
  top_rated_movies_object = JSON.parse(url_serialized)
  top_25_movies = top_rated_movies_object['results'].first(25)
  top_25_movies.each do |movie|
    puts movie['title']
  end





  # http = Net::HTTP.new(url.host, url.port)

  # request = Net::HTTP::Get.new(url)
  # request["accept"] = 'application/json'
  # response = http.request(request)
  # puts response

end
