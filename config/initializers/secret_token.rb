# Be sure to restart your server when you modify this file.

# Your secret key is used for verifying the integrity of signed cookies.
# If you change this key, all old signed cookies will become invalid!

# Make sure the secret is at least 30 characters and all random,
# no regular words or you'll be exposed to dictionary attacks.
# You can use `rake secret` to generate a secure secret key.

# Make sure your secret_key_base is kept private
# if you're sharing your code publicly.
require 'securerandom'

def secure_token
  token_file = Rails.root.join('.secret')
  if File.exist?(token_file)
    # Use the existing token.
    File.read(token_file).chomp
  else
    # Generate a new token and store it in token_file.
    token = SecureRandom.hex(64)
    File.write(token_file, token)
    token
  end
end

Zombify::Application.config.secret_key_base = secure_token

# BELOW IS WHAT WAS OVERIDDEN FROM THE DEFAULTS

# # Be sure to restart your server when you modify this file.

# # Your secret key is used for verifying the integrity of signed cookies.
# # If you change this key, all old signed cookies will become invalid!

# # Make sure the secret is at least 30 characters and all random,
# # no regular words or you'll be exposed to dictionary attacks.
# # You can use `rake secret` to generate a secure secret key.

# # Make sure your secret_key_base is kept private
# # if you're sharing your code publicly.
# Zombify::Application.config.secret_key_base = '2cf1f96b25ab8251da84e72197ff4a82bdd73bdeae135f8d4245fc69a9df9ff50ff17b7fd57574a06120e53c8135790b31b9a195241567d9b530a183a52bc3ad'
