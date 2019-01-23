# Load the Rails application.
<<<<<<< HEAD
require File.expand_path('../application', __FILE__)

=======
require_relative 'application'
require 'rmmseg'
RMMSeg::Dictionary.load_dictionaries
require 'text_rank'
require 'rubygems'
require 'jieba_rb'
>>>>>>> production/master
# Initialize the Rails application.
Rails.application.initialize!
