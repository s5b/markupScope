require_relative '../app/listing.rb'
require 'spec_helper.rb'
require 'capybara'
require 'capybara/rspec'
require 'capybara/dsl'
require 'capybara/poltergeist'
require 'sinatra'

Capybara.app = Sinatra::Application
Capybara.javascript_driver = :poltergeist
Capybara.always_include_port=true

feature 'Listing Name' do

  it 'should include the name of the listing e heading' do
    visit '/directory-listing/acme'
    find('#name').should have_content('ACME')
  end

end