source 'https://rubygems.org'
ruby '1.9.3'

# Gems required by all environments
gem 'rails', '3.2.8'
gem 'jquery-rails'

gem 'rack-canonical-host'                     # https://github.com/tylerhunt/rack-canonical-host
gem 'httparty'                                # https://github.com/jnunemaker/httparty
gem 'active_attr'                             # https://github.com/cgriego/active_attr
gem 'slim-rails'                              # https://github.com/leogalmeida/slim-rails
gem 'sorcery'                                 # https://github.com/NoamB/sorcery
gem 'validates_email_format_of'               # https://github.com/alexdunae/validates_email_format_of
gem 'mini_magick'                             # https://github.com/probablycorey/mini_magick
gem 'carrierwave'                             # https://github.com/jnicklas/carrierwave
gem 'fog', '~> 1.3.1'                         # https://github.com/fog/fog

# Gems requred only for development
group :development, :test do
	gem 'sqlite3'
	gem 'letter_opener'													# https://github.com/ryanb/letter_opener
end

# Gems required for heroku
group :production do
	gem 'pg'
	gem 'thin'
	gem 'foreman'
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'

  gem 'compass-rails', '~> 1.0.3'							# https://github.com/Compass/compass-rails
  gem 'zurb-foundation', '~> 3.1.1'						# http://foundation.zurb.com/docs/
  gem 'foundation_rails_helper',              # https://github.com/sgruhier/foundation_rails_helper
    #:git => 'git://github.com/sgruhier/foundation_rails_helper.git',
    :git => 'https://github.com/keilmillerjr/foundation_rails_helper.git',
    :branch => 'master'
  gem 'font-awesome-sass-rails'								# https://github.com/littlebtc/font-awesome-sass-rails
end
