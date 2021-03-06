# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w(
  optimadmin/*
  roi_savings/*
  tinymce/*
  components/*.js
  vendor/marker-with-label.js
  vendor/modernizr.js
  vendor/jquery.viewport.js
  vendor/jquery.doubletaptogo.js
  vendor/jquery-ui.js
  vendor/jquery-ui.css
  vendor/jquery-ui.structure.css
  vendor/jquery-ui.theme.css
  vendor/match-height.js
)
