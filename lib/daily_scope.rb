require_relative "daily_scope/version"
require_relative "daily_scope/cli"
require_relative "daily_scope/date"
require_relative "daily_scope/scraper"
require_relative "daily_scope/sign"
require 'pry'
require 'nokogiri'
require 'open-uri'

module DailyScope
  class Error < StandardError; end
  # Your code goes here...
end
