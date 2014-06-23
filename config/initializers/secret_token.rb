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
		File.read(token_file, token)
		token
	end
end

HartlSampleApp::Application.config.secret_key_base = '204bd38872adae79f2618f09c6f797694de76c89eec546d4fb24a6aa7695a630c5730dc48f8f6b2de6e4492d4130615e12d8eb8a8b8e6a56a06be0dab8726fd5'
