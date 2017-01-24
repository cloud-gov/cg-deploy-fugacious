#!/bin/sh

export RAILS_ENV=test

cd fugacious-src
sed -i '/capybara-webkit/d' Gemfile
bundle install --without devops
bundle exec rake db:migrate
bundle exec rake
