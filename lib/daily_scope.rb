require_relative "daily_scope/version"
require_relative "daily_scope/cli"
require_relative "daily_scope/horoscope"
require_relative "daily_scope/scraper"


require 'nokogiri'
require 'open-uri'

module DailyScope
  class Error < StandardError; end
  # Your code goes here...
end
