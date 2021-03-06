Rails.application.config.middleware.use OmniAuth::Builder do
  provider :spotify, ENV['SPOTIFY_CLIENT_ID'], ENV['SPOTIFY_CLIENT_SECRET'],
  scope: %w[user-modify-playback-state
          playlist-modify-public
          user-top-read
          user-read-playback-state
          user-library-modify
          user-library-read].join(' ')
end
