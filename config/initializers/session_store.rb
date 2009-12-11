# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_multi_auth_sample_session',
  :secret      => 'e75e6f4eedd714d1cdfcddeb328a583f9844872e0e8fb2d7bc2a39f1c96e92c456a6bb50ba189d213e809c4259ee4073261b559156405d8b4b18dade3166ab53'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
