require_relative 'scraper'

scraper = Scraper.new()
scraper.scrape("https://en.wikipedia.org/wiki/List_of_Chopped_episodes")
scraper.separate_episodes