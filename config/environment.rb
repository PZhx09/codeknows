# Load the Rails application.
require_relative 'application'
require 'rmmseg'
RMMSeg::Dictionary.load_dictionaries
require 'text_rank'
require 'rubygems'
require 'jieba_rb'
# Initialize the Rails application.
Rails.application.initialize!
