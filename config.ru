# This file is used by Rack-based servers to start the application.
require_relative 'config/environment'

run Rails.application

test:
  adapter: postgresql
  database: pgapp_test
  username: travis
  encoding: utf8
