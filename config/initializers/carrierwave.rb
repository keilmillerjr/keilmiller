# Use local storage for testing
if Rails.env.test? or Rails.env.cucumber?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end
end

# Use local storage for development
if Rails.env.development?
  CarrierWave.configure do |config|
    config.storage = :file
  end
end

# Use Amazon S3 for Production, change uploads folder (not allowed to write to public on heroku)
if Rails.env.production?
  CarrierWave.configure do |config|
    config.storage = :fog
    config.cache_dir = "#{Rails.root}/tmp/uploads"
  end
end

# Configure Fog for Amazon S3
CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',
    :aws_access_key_id      => '',
    :aws_secret_access_key  => '',
    :region                 => 'us-east-1'
  }
  config.fog_directory  = 'keilmiller'
end