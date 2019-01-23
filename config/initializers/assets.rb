# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

<<<<<<< HEAD
Rails.application.config.assets.precompile += %w( main5152.css )
Rails.application.config.assets.precompile += %w( blue-skin5152.css )
Rails.application.config.assets.precompile += %w( green-skin5152.css )
Rails.application.config.assets.precompile += %w( red-skin5152.css )
Rails.application.config.assets.precompile += %w( bootstrap5152.css )
Rails.application.config.assets.precompile += %w( responsive5152.css )
Rails.application.config.assets.precompile += %w( custom5152.css )

#Rails.application.config.assets.precompile += %w( application.js )
#Rails.application.config.assets.precompile += %w( custom5152.js )
#Rails.application.config.assets.precompile += %w( jflickrfeed.js )
#Rails.application.config.assets.precompile += %w( jquery-1.8.3.min.js )
#Rails.application.config.assets.precompile += %w( jquery.easing.1.3.js )
#Rails.application.config.assets.precompile += %w( jquery.easing.1.34e44.js )
#Rails.application.config.assets.precompile += %w( jquery.form.js )
#Rails.application.config.assets.precompile += %w( jquery.formd471.js )
#Rails.application.config.assets.precompile += %w( jquery.liveSearch.js )
#Rails.application.config.assets.precompile += %w( jquery.liveSearchd5f7.js )
#Rails.application.config.assets.precompile += %w( jquery.validate.min.js )
#Rails.application.config.assets.precompile += %w( jquery.validate.minfc6b.js )
#Rails.application.config.assets.precompile += %w( prettyphoto/jquery.prettyPhoto.js )
#Rails.application.config.assets.precompile += %w( prettyphoto/jquery.prettyPhotoaeb9.js )
#Rails.application.config.assets.precompile += %w( prettyPhotoaeb9.css )

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
=======
# Add additional assets to the asset load path.
# Rails.application.config.assets.paths << Emoji.images_path
# Add Yarn node_modules folder to the asset load path.
Rails.application.config.assets.paths << Rails.root.join('node_modules')

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in the app/assets
# folder are already added.
# Rails.application.config.assets.precompile += %w( admin.js admin.css )
>>>>>>> production/master
