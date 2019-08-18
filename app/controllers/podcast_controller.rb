class PodcastController < ApplicationController
  def index
  	# Set our podcast URL
  	podcast_url = ENV["RAILS_PODCAST_URL"]
  	podcast_results = HTTParty.get(podcast_url, :verify => false)
  	@podcast_parsed = Nokogiri::XML(podcast_results.to_s)
  	@podcast_titles = @podcast_parsed.xpath("//title")

  end
end
