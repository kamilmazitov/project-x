# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = ENV.fetch("ASSETS_VERSION", "1.0")
Rails.application.config.assets.precompile += %w[mailer]
Rails.application.config.assets.precompile += %w[admin_scope.js admin_scope.css]
Rails.application.config.assets.precompile += %w[admin_scope/main.js]

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += ["**/*.woff", "**/*.woff2"]
