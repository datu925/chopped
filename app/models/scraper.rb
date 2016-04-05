require 'nokogiri'
require 'net/http'
require 'jazz_fingers'

class Scraper

  def scrape(url)
    @html = Net::HTTP.get(URI(url))
    @noko = Nokogiri::HTML(@html)
    # binding.pry
  end



  def separate_episodes
    seasons = @noko.css(".wikitable[width='100%']")
    episodes = []
    contestants = []
    judges = []
    seasons.each do |season|
      row_count = season.css("tr").count
      n = 0
      while n + 1 < row_count
        episode = season.css("tr")[1 + n, 3]
        episodes << episode
        contestants << episode.css("tr")[2].css("li")
        judges << episode.css("tr")[1].css("td")[1].css("li")
        n += 3
      end
      binding.pry
    end
  end
end