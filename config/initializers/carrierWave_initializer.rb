CarrierWave.configure do |config|
  config.fog_credentials = {
    :provider               => 'AWS',                        # required
    :aws_access_key_id      => 'AKIAIFJNT3XTPQULHMSQ',                        # required
    :aws_secret_access_key  => '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'                        # required
       
  }
  config.fog_directory  = 'lifeshare-us'                     # required
  config.fog_public     = true                                   # optional, defaults to true
  config.fog_attributes = {'Cache-Control'=>'max-age=315576000'}  # optional, defaults to {}
end
