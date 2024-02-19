# frozen_string_literal: true

source "https://rubygems.org"

git_source(:github) { |repo_name| "https://github.com/#{repo_name}" }

gem "rake"
gem "sinatra"
gem "sinatra-contrib"
gem "dotenv"

gem "puma"
gem "http"
gem "thin"
gem "reel"
gem "falcon"
gem "webrick"

group :development do
  gem "rerun"
  gem "pry-byebug"
  gem "standard"
end

group :test do # run: find test -name "*_test.rb" -exec ruby -Itest {} \; to execute all tests
  gem "minitest"
  gem "simplecov", require: false
  gem "rack-test"
  gem "minitest-reporters"
  gem "minitest-spec-rails"
  gem "minitest-metadata"
  gem "standardrb"
end
