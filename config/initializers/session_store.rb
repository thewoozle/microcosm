# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_microcosm_session',
  :secret      => 'cbed228752af863c11a0ca5e9c19084fccaa9eae9dcd678531fbb5d3d4eb8e0e269f0b3d90972bac748f0c2141b141f6242b9e2d6b6da8e3afcf7c2b05adff8a'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
