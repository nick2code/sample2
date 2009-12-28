# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_sample2_session',
  :secret      => '82a07b90d148a1be28e2da45bff0d6268afb3727eeb80d7a96d8af402ad34c899571e498b81dca370a25f0f9d16c9610bdcd3bf2088f7ca488898ba4b122f5da'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
