<<<<<<< HEAD
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../../Gemfile', __FILE__)
=======
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('../Gemfile', __dir__)
>>>>>>> production/master

require 'bundler/setup' # Set up gems listed in the Gemfile.
